package com.wke.webapp.comm.utility;

import java.util.Random;



/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright:  Copyright (c) 2008  Idea Company</p>
 * <p>Company: idea</p>
 * @author lifeng
 * @version 1.0
 */
public class RandomString {


    private static final Random RANDOM = new Random();

    /**
     * 构造指定长度的随机字符串，以整型变量Integer可表示的所有正整数为码值的所有字符为素材
     * @param count   构造字符串的长度（字符个数）
     * @return        返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：String s = RandomStringUtils.random(10);
     * <br>返回值：s = "羈?鼫囸顏?瘝?闗輳";
     * <br>哈哈，一堆鬼符，如果你能读明白，告诉我
     */
    public  static String random(int count) {
        return random(count, false, false);
    }

    /**
     * 构造指定长度的ASCII字符随机字符串
     * @param count   构造字符串的长度（字符个数）
     * @return        返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：String s = RandomStringUtils.randomAscii(20);
     * <br>返回值：s = "w ;-_bz?wN]8q10?P B";
     * <br>返回值由可视ASCII字符组成
     */
    public  static String randomAscii(int count) {
        return random(count, 32, 127, false, false);
    }

    /**
     * 构造指定长度的英文字母随机字符串
     * @param count   构造字符串的长度（字符个数）
     * @return        返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：String s = RandomStringUtils.randomAlphabetic(20);
     * <br>返回值：s = "yGImRoOBvBLNaFihDoVo";
     * <br>返回值由大小写英文字母组成

     */
    public  static String randomAlphabetic(int count) {
        return random(count, true, false);
    }

    /**
     * 构造指定长度的数字、英文字母混合的随机字符串
     * @param count   构造字符串的长度（字符个数）
     * @return        返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：String s = RandomStringUtils.randomAlphanumeric(20);
     * <br>返回值：s = "MevThO39xlK6b6Asg3Uq";
     * <br>返回值由数字、英文字母混合组成

     */
    public  static String randomAlphanumeric(int count) {
        return random(count, true, true);
    }

    /**
     * 够造指定长度的随机数字字符串
     * @param count  构造字符串的长度（字符个数）
     * @return       返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：String s = RandomStringUtils.randomNumeric(20);
     * <br>返回值：s = "23547933728487290410";
     * <br>返回值由数字组成
     */
    public  static String randomNumeric(int count) {
        return random(count, false, true);
    }

    /**
     * 够造指定长度的随机字符串
     * @param count    构造字符串的长度（字符个数）
     * @param letters  true 返回字符串中是否可以包含字母字符
     * @param numbers  true 返回字符串中是否可以包含数字字符
     * @return         返回构造的随机字符串

     */
    private  static String random(int count, boolean letters, boolean numbers) {
        return random(count, 0, 0, letters, numbers);
    }

    /**
     * 够造指定长度的随机字符串
     * @param count    构造字符串的长度（字符个数）
     * @param start    构造字符串所需素材的最小值(字符编码值)
     * @param end      构造字符串所需素材的最大值(字符编码值)
     * @param letters  true 返回字符串中是否可以包含字母字符
     * @param numbers  true 返回字符串中是否可以包含数字字符
     * @return         返回构造的随机字符串

     */
    private  static String random(int count, int start, int end, boolean letters, boolean numbers) {
        return random(count, start, end, letters, numbers, null);
    }

    /**
     * 根据给定的字符串作为素材字符集，返回随机字符串
     * @param count   构造字符串的长度（字符个数）
     * @param set     构造字符串所需素材字符集合
     * @return        返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：
     * <br>Stirng c = "abcdefg";
     * <br>String s = RandomStringUtils.random(20,c);
     * <br>返回值：s = "ffbeaefbbdaafecagegc";
     * <br>返回值由给定素材字符组成
     */
    public  static String random(int count, String set) {
        return random(count, set.toCharArray());
    }

    /**
     * 根据给定素材字符集，返回随机字符串
     * @param count 构造字符串的长度（字符个数）
     * @param set   构造字符串所需素材字符集合
     * @return      返回构造的随机字符串
     * <br>
     * <br>例：
     * <br>调用：
     * <br>char c[] = "abcdefg".toCharArray();
     * <br>String s = RandomStringUtils.random(20,c);
     * <br>返回值：s = "gaeacgeebagacgdbfcff";
     * <br>返回值由给定素材字符组成
     */
    public  static String random(int count, char[] set) {
        return random(count, 0, set.length - 1, false, false, set);
    }

    /**
     * 够造指定长度的随机字符串
     * @param count    构造字符串的长度（字符个数）
     * @param start    构造字符串所需素材的最小值(字符编码值)
     * @param end      构造字符串所需素材的最大值(字符编码值)
     * @param letters  true 返回字符串中是否可以包含字母字符
     * @param numbers  true 返回字符串中是否可以包含数字字符
     * @param set      构造字符串所需素材字符集合
     * @return         返回构造的随机字符串
     *
     * <br>参数说明：
     * <br>参变量count,start,end应为非负正整数
     * <br>当素材字符集合set非空时，参变量start、end取值应为set的有效下标
     * <br>构建字符串失败时，返回null
     */
    private  static String random(int count, int start, int end, boolean letters, boolean numbers, char[] set) {
        StringBuffer buffer = new StringBuffer();

        if(count <=0 || start <0 || end < 0 || start > end){
            return null;
        }
        if(set != null && (start > set.length || end - start + 1 > set.length)){
            return null;
        }
        if(set != null && end >= set.length){
            return null;
        }

        //随机数据的取值范围
        int gap = 0;             //随机数的取值范围
        if( (start == 0) && (end == 0) ) {
            //默认为从' '(空格)到字符'z'的ascii值
            end = (int)'z';
            start = (int)' ';
            gap = end - start+1;             //随机数的取值范围
            if(!letters && !numbers) {
                //如果类型无限制，则取值范围为正整数类型Integer的可表示范围
                start = 0;
                end = Integer.MAX_VALUE;
                gap = end - start;             //随机数的取值范围
            }
        }
        else{
            gap = end - start+1;             //随机数的取值范围
        }

        while(count-- != 0) {
            char ch;
            if(set == null) {
                ch = (char)(RANDOM.nextInt(gap) + start);
            }
            else {
                ch = set[RANDOM.nextInt(gap) + start];
            }

            if( (letters && numbers && Character.isLetterOrDigit(ch)) ||//定义为字符和数字，生成为字符或数字

                (letters && Character.isLetter(ch)) ||                  //定义为字符，生成为字符

                (numbers && Character.isDigit(ch)) ||                   //定义为数字，生成为数字

                (!letters && !numbers)                                  //定义不限定字符或数字
              )
            {
                buffer.append( ch );
            }
            else {
                count++;//
            }
        }
        return buffer.toString();
    }
}