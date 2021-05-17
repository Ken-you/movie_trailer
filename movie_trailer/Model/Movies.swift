//
//  Movies.swift
//  movie_trailer
//
//  Created by yousun on 2021/5/16.
//

import Foundation

// 自訂電影分類
enum genre {
    case Action
    case Comedy
    case Romance
    case Horror
    case Fantasy
}

// 自訂型別 Movie
struct Movie {
    
    let name :String
    let time :String
    let intro :String
    let imageName :String
    let url :String
}

// movies data
var movies = [
    
    //Action
    [Movie(name: "群青戰記", time: "2021-06-04", intro: "★《週刊Young Jump》人氣漫畫改編，原作銷量突破百萬冊！ ★ 新田真劍佑首次單獨主演電影，苦練弓道親自上陣 ★ 三浦春馬最後身影，詮釋征夷大將軍德川家康", imageName: "群青戰記", url: "https://movies.yahoo.com.tw/video/%E7%BE%A4%E9%9D%92%E6%88%B0%E8%A8%98-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-074423154.html?movie_id=11397"),
     Movie(name: "殺手保鑣2", time: "2021-06-16", intro: "★ 億萬票房《殺手保鑣》系列續集，暑假必看! ★影史最強三賤客，原班人馬霸氣回歸，戰力全開「一生只賤你一人」!   萊恩雷諾斯、山繆傑克森雙人合體電影《殺手保鏢》票房大獲成功，萊恩與山繆都相當喜歡這個角色，因此再度與導演簽下續集合約。但有個前提是：續集劇本一定要更賤、爆破要更驚人，導演義無反顧一口答應! ", imageName: "殺手保鑣2", url: "https://movies.yahoo.com.tw/video/%E6%AE%BA%E6%89%8B%E4%BF%9D%E9%91%A32-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-073532908.html?movie_id=10441"),
     Movie(name: "黑寡婦", time: "2021-07-09", intro: "漫威影業2020年的首部重頭戲，是粉絲請求多時，終於實現的《黑寡婦》個人電影，黑寡婦在漫威電影宇宙中舉足輕重，10多年來參與了7部電影。", imageName: "黑寡婦", url: "https://movies.yahoo.com.tw/video/%E9%BB%91%E5%AF%A1%E5%A9%A6-%E6%AD%A3%E5%BC%8F%E9%A0%90%E5%91%8A-030958557.html?movie_id=10397"),
     Movie(name: "怒火", time: "2021-08-06", intro: "動作鉅獻《怒火》由陳木勝執導及監製，甄子丹監製及動作導演，甄子丹、謝霆鋒、秦嵐領銜主演，是2021年最令人期待的華語超級動作電影。", imageName: "怒火", url: "https://movies.yahoo.com.tw/video/%E6%80%92%E7%81%AB-%E5%89%8D%E5%B0%8E%E9%A0%90%E5%91%8A-142202756.html?movie_id=11331"),
    ],
    
    //Comedy
    [Movie(name: "野蠻糾碴隊", time: "2021-05-21", intro: "當虎媽遇上豬隊友，當書呆子遇上女頭目 到底是誰綁架了誰？又是誰要拯救誰？", imageName: "野蠻糾碴隊", url: "https://movies.yahoo.com.tw/video/%E9%87%8E%E8%A0%BB%E7%B3%BE%E7%A2%B4%E9%9A%8A-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-055832782.html?movie_id=11300"),
    Movie(name: "時尚惡女：庫伊拉", time: "2021-06-04", intro: "★迪士尼經典時尚大反派「庫伊拉」崛起故事 真人版搬上大銀幕 ★奧斯卡兩大影后 艾瑪史東與艾瑪湯普遜同台飆戲 ★《瘋狂麥斯：憤怒道》兩屆金獎造型得主 傾力打造英倫龐克搖滾時尚風", imageName: "時尚惡女：庫伊拉", url: "https://movies.yahoo.com.tw/video/%E6%99%82%E5%B0%9A%E6%83%A1%E5%A5%B3-%E5%BA%AB%E4%BC%8A%E6%8B%89-60%E7%A7%92%E7%B2%BE%E5%BD%A9%E7%89%87%E6%AE%B5-103041157.html?movie_id=11252"),
    Movie(name: "詐製片家", time: "2021-06-11", intro: "★今年最大咖超鬧爆笑喜劇！ ★三大金獎影帝勞勃狄尼洛、湯米李瓊斯、摩根費里曼爆笑過招！  ★故事曲折離奇、笑死人不償命", imageName: "詐製片家", url: "https://movies.yahoo.com.tw/video/%E8%A9%90%E8%A3%BD%E7%89%87%E5%AE%B6-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-115748560.html?movie_id=11395"),
    Movie(name: "寶貝老闆：家大業大", time: "2021-08-20", intro: "在夢工廠動畫入圍奧斯卡金像獎的賣座動畫片《寶貝老闆》續集電影《寶貝老闆：家大業大》一片中，天普頓兄弟－提姆（《X戰警》系列電影詹姆斯馬斯登 配音）和他的寶貝老闆小弟弟泰德（亞歷鮑德溫 配音）", imageName: "寶貝老闆：家大業大", url: "https://movies.yahoo.com.tw/video/%E5%AF%B6%E8%B2%9D%E8%80%81%E9%97%86-%E5%AE%B6%E5%A4%A7%E6%A5%AD%E5%A4%A7-%E9%A6%96%E6%94%AF%E9%A0%90%E5%91%8A-065844994.html?movie_id=11084"),
    ],
    
    //Romance
    [Movie(name: "小王子公主心", time: "2021-05-28", intro: "★ 4座最佳紀錄片獎得主   千萬觀眾感動淚推，動人鉅獻！ ★ 紀錄人類幼小心靈的掙扎與歡笑   關於愛與勇氣的真實故事！ ", imageName: "小王子公主心", url: "https://movies.yahoo.com.tw/video/%E5%B0%8F%E7%8E%8B%E5%AD%90%E5%85%AC%E4%B8%BB%E5%BF%83-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-012216013.html?movie_id=11389"),
     Movie(name: "花束般的戀愛", time: "2021-06-04", intro: "★ 「百變影帝」菅田將暉x「國民妹妹」有純架純共譜現代浪漫愛情故事 ★ 《現在，很想見你》《淚光閃閃》導演土井裕泰又一經典愛情劇作 ", imageName: "花束般的戀愛", url: "https://www.youtube.com/watch?v=FjgSj9F2IC0"),
     Movie(name: "感動她77次", time: "2021-06-04", intro: "★香港天后蔡卓妍，帥氣男星周柏豪、再加上泰國偶像男神馬力歐共同演出糾心三角戀，想挽回10年感情的前男友，和突然出現的貼心帥哥，你要回首舊愛還是擁抱新戀情？", imageName: "感動她77次", url: "https://movies.yahoo.com.tw/video/%E6%84%9F%E5%8B%95%E5%A5%B977%E6%AC%A1-%E5%89%8D%E5%B0%8E%E9%A0%90%E5%91%8A-112402974.html?movie_id=11394"),
     Movie(name: "老師！你會不會談戀愛", time: "2021-07-02", intro: "★ 2021金馬奇幻影展觀眾票選第六名   無法融入一般人群的兩個怪咖，即將掀起一陣風暴！  ", imageName: "老師！你會不會談戀愛", url: "https://movies.yahoo.com.tw/video/%E8%80%81%E5%B8%AB-%E4%BD%A0%E6%9C%83%E4%B8%8D%E6%9C%83%E8%AB%87%E6%88%80%E6%84%9B-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-043504973.html?movie_id=11382"),
    ],
    
    //Horror
    [Movie(name: "厲陰宅3：是惡魔逼我的", time: "2021-05-27", intro: "《厲陰宅3：是惡魔逼我的》改編自華倫夫婦的真實檔案，該片揭露了一則集恐怖、謀殺與未知惡魔，令人寒毛直豎的故事，", imageName: "厲陰宅3：是惡魔逼我的", url: "https://movies.yahoo.com.tw/video/%E5%8E%B2%E9%99%B0%E5%AE%853-%E6%98%AF%E6%83%A1%E9%AD%94%E9%80%BC%E6%88%91%E7%9A%84-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-144421278.html?movie_id=11376"),
     Movie(name: "告白", time: "2021-05-28", intro: "★ 2010年度台灣日片票房冠軍 ★ 第83屆奧斯卡金像獎外語片獎提名 ★ 改編自日本2009年書店大賞第1名同名小說《告白》", imageName: "告白", url: "https://movies.yahoo.com.tw/video/%E5%91%8A%E7%99%BD-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-143812893.html?movie_id=11390"),
     Movie(name: "噤界II", time: "2021-06-09", intro: "故事承接上一集，家裡發生意外之後，一家人（艾蜜莉布朗、諾亞朱佩、米莉森西蒙斯）現在必須去面對外界未知的恐怖世界，", imageName: "噤界II", url: "https://movies.yahoo.com.tw/video/%E5%99%A4%E7%95%8C-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-020432450.html?movie_id=10435"),
     Movie(name: "糖果人", time: "2021-09-10", intro: "別說出他的名字。    今年暑假，奧斯卡金像獎得主喬登皮爾將以全新的角度，重新呈現一個令人不寒而慄的都市傳說，你朋友的哥哥姐姐也許在你去他們家過夜時，", imageName: "糖果人", url: "https://movies.yahoo.com.tw/video/%E7%B3%96%E6%9E%9C%E4%BA%BA-%E9%A6%96%E6%94%AF%E9%A0%90%E5%91%8A-024906303.html?movie_id=10549"),
    ],
    
    //Fantasy
    [Movie(name: "宇宙特攻隊", time: "2021-06-04", intro: "★俄羅斯影史最強特效場景 ★《馴龍高手》《變形金剛》億萬動畫團隊再造顛峰 ★網友狂讚！媲美《艾莉塔：戰鬥天使》  ", imageName: "宇宙特攻隊", url: "https://movies.yahoo.com.tw/video/%E5%AE%87%E5%AE%99%E7%89%B9%E6%94%BB%E9%9A%8A-%E6%AD%A3%E5%BC%8F%E9%A0%90%E5%91%8A-005914649.html?movie_id=11388"),
     Movie(name: "比得兔兔", time: "2021-06-11", intro: "★2020年最強真人動畫《彼得兔兔》將於春假襲台賣萌 ★兔兔也北漂？全球最紅兔再度萌賤出擊 續集即將療癒全球！    ", imageName: "比得兔兔", url: "https://movies.yahoo.com.tw/video/%E6%AF%94%E5%BE%97%E5%85%94%E5%85%94-%E9%A6%96%E6%94%AF%E9%A0%90%E5%91%8A-030027014.html?movie_id=10488"),
     Movie(name: "異星佔領：反擊時刻", time: "2021-06-18", intro: "★《STAR WARS：最後的絕地武士》幕後特效團隊震撼打造 ★ 科幻話題作品《異星佔領》正宗續集 ★ 人類忍無可忍，誓將全面反擊！   ", imageName: "異星佔領：反擊時刻", url: "https://www.youtube.com/watch?v=C0BUi1-y70s"),
     Movie(name: "怪物奇兵 全新世代", time: "2021-07-15", intro: "詹皇和他年幼的兒子小唐被一個抓狂的人工智慧困在一個數位空間，他必須登上球場，帶領兔寶寶、蘿拉兔及一幫調皮的「樂一通」（Looney Tunes）角色", imageName: "怪物奇兵 全新世代", url: "https://movies.yahoo.com.tw/video/%E6%80%AA%E7%89%A9%E5%A5%87%E5%85%B5-%E5%85%A8%E6%96%B0%E4%B8%96%E4%BB%A3-%E4%B8%AD%E6%96%87%E9%A0%90%E5%91%8A-141806924.html?movie_id=11342"),
    ],
]
