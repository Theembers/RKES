package com.wke.keyword;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

import org.ansj.domain.Term;
import org.ansj.splitWord.analysis.NlpAnalysis;
import org.ansj.splitWord.analysis.ToAnalysis;
import org.nlpcn.commons.lang.util.StringUtil;

/**
 * 关键字抽取算法
 * 
 * @author gyx
 */
public class KeyWordComputer {

	private static final Map<String, Double> POS_SCORE = new HashMap<String, Double>();

	static {

		POS_SCORE.put("nr", 3.0);
		POS_SCORE.put("nrf", 3.0);
		POS_SCORE.put("nw", 3.0);
		POS_SCORE.put("nt", 3.0);
		POS_SCORE.put("l", 0.2);
		POS_SCORE.put("a", 0.2);
		POS_SCORE.put("nz", 3.0);
		POS_SCORE.put("v", 0.2);

		POS_SCORE.put("null", 0.0);
		POS_SCORE.put("w", 0.0);
		POS_SCORE.put("en", 0.0);
		POS_SCORE.put("num", 0.0);
		POS_SCORE.put("d", 0.0);
		POS_SCORE.put("u", 0.0);
		POS_SCORE.put("c", 0.0);
		POS_SCORE.put("m", 0.0);
		POS_SCORE.put("f", 0.0);
		POS_SCORE.put("gm", 0.0);

	}

	private int nKeyword = 5;

	public KeyWordComputer() {
	}

	/**
	 * 抽取数量
	 * 
	 * @param nKeyword
	 */
	public KeyWordComputer(int nKeyword) {
		this.nKeyword = nKeyword;

	}

	/**
	 * 
	 * @param content
	 *            标题权重
	 * @return
	 */
	private List<Keyword> computeArticleTfidf(String content, int titleLength) {
		Map<String, Keyword> tm = new HashMap<String, Keyword>();
		// nlp分词
		List<Term> parse = NlpAnalysis.parse(content);
		for (Term term : parse) {
			double weight = getWeight(term, content.length(), titleLength);
			if (weight == 0)
				continue;
			Keyword keyword = tm.get(term.getName());
			if (keyword == null) {
				keyword = new Keyword(term.getName(),
						term.natrue().allFrequency, weight);
				tm.put(term.getName(), keyword);
			} else {
				keyword.updateWeight(1);
			}
		}

		TreeSet<Keyword> treeSet = new TreeSet<Keyword>(tm.values());

		ArrayList<Keyword> arrayList = new ArrayList<Keyword>(treeSet);
		if (treeSet.size() <= nKeyword) {
			return arrayList;
		} else {
			return arrayList.subList(0, nKeyword);
		}

	}

	/**
	 * 
	 * @param title
	 *            
	 * @param content
	 * @return
	 */
	public List<Keyword> computeArticleTfidf(String title, String content) {
		if (StringUtil.isBlank(title)) {
			title = "";
		}
		if (StringUtil.isBlank(content)) {
			content = "";
		}
		return computeArticleTfidf(title + "\t" + content, title.length());
	}

	/**
	 * 文章TF-IDF
	 * 
	 * @param content
	 * @return
	 */
	public List<Keyword> computeArticleTfidf(String content) {
		return computeArticleTfidf(content, 0);
	}

	private double getWeight(Term term, int length, int titleLength) {
		// 单字过滤，我们会发现中文中绝大多数的单字都是不具有绝对意义的词，默认排除在关键词之列
		if (term.getName().trim().length() < 2) {
			return 0;
		}

		String pos = term.natrue().natureStr;

		Double posScore = POS_SCORE.get(pos);

		if (posScore == null) {
			posScore = 1.0;
		} else if (posScore == 0) {
			return 0;
		}

		if (titleLength > term.getOffe()) {
			return 5 * posScore;
		}
		return (length - term.getOffe()) * posScore / (double) length;
	}

}
