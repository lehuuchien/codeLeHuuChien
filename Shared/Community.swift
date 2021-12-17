//
//  Community.swift
//  Phase1
//
//  Created by Le Huu Chien on 14/12/2021.
//

import SwiftUI

struct Community: View {
    var image: String?
    var title: String?
    var date: String?
    var viewer: String?
    var body: some View {
        VStack(alignment: .leading ){
            HStack{
                Image(image ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120, alignment: .center)
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        Text(title ?? "")
                            .foregroundColor(.white)
                            
                            .font(.system(size: 14))
                    }.frame(width: 247, height: 34, alignment: .leading)
                    HStack{
                        Button {
                        } label: {
                            Text("Stocks")
                                .foregroundColor(Color(hex: "999999"))
                                .frame(width: 72, height: 32, alignment: .center)
                                .background(Color(hex: "2B3248"))
                                .cornerRadius(16)
                        }
                        Button {
                        } label: {
                            Text("Funds")
                                .foregroundColor(Color(hex: "999999"))
                                .frame(width: 72, height: 32, alignment: .center)
                                .background(Color(hex: "2B3248"))
                                .cornerRadius(16)
                        }
                    }
                    HStack{
                        Text(date ?? "")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                        Spacer()
                        Image("eye")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 15, height: 9, alignment: .center)
                        Text(viewer ?? "")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }
                }.frame(width: 247, height: 34, alignment: .leading)
            }.frame(maxWidth: .infinity, maxHeight: 120, alignment: .center)
            
//            Rectangle()
//                .frame(width: .infinity, height: 1, alignment: .center)
//                .background(.black)
        }.frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
            .padding(.bottom, 12)
        
    }
}

struct ModelCommunity{
    var image: String?
    var title: String?
    var date: String?
    var viewer: String?
    var textContent: String?
}

struct ViewCommunity: View {
    let listCommunity = [ModelCommunity(image: "com1", title: "Investing 101 Part 5: 5 Basic Investment Strategies for Beginners", date: "August 11, 2021", viewer: "100", textContent: """
    By now, you should have built a resource library, opened an online brokerage account, and perhaps contemplated dipping your toes into some blue chips or ETFs. Are you then eager to start investing?

    Today’s Investing 101 introduces you to five basic investment strategies for beginners.

    As you digest the information, bear in mind that there is no one best investment strategy.

    The truth is that markets ebb and flow and investors are not as rational as we would like to think. We may become overly optimistic when times are good and overly pessimistic when the economy and markets lose steam.

    When the unexpected happens, remain calm. Remember Warren Buffett’s golden advice, “Be fearful when others are greedy and greedy when others are fearful.” Greed drives asset prices up while fear causes asset prices to dip. As counterintuitive as it sounds, economic downturns could be perfect buying opportunities!

    Being aware of these fundamental investment strategies can help you develop a go-to investing approach. You may even combine strategies, depending on market conditions and your investment goals. Think of today’s Investing 101 as a starting point for your investment journey.

    Let’s begin!

    1. Dollar-cost averaging

    Dollar-cost averaging is a strategy where small amounts of money are invested regularly in an asset. For instance, investing S$100 every month in a stock for a year is a form of dollar-cost averaging. You buy more of the stock when prices are low and you cut your purchases when prices are high. Due to your commitment to make consistent investments, your price per share eventually averages out.

    To maximise returns with dollar-cost averaging, you could invest more regularly when opportunities arise and cut back when prices rebound. Opportunities arise when prices dip or when markets crash.

    Over time, dollar-cost averaging reduces your exposure to price volatility. You no longer try to predict market movements. Instead, you are in it for the long haul.
"""), ModelCommunity(image: "com2", title: "National Day Special: Singapore Sectors Worth Investing", date: "August 06, 2021", viewer: "257", textContent: """
    By now, you should have built a resource library, opened an online brokerage account, and perhaps contemplated dipping your toes into some blue chips or ETFs. Are you then eager to start investing?

    Today’s Investing 101 introduces you to five basic investment strategies for beginners.

    As you digest the information, bear in mind that there is no one best investment strategy.

    The truth is that markets ebb and flow and investors are not as rational as we would like to think. We may become overly optimistic when times are good and overly pessimistic when the economy and markets lose steam.

    When the unexpected happens, remain calm. Remember Warren Buffett’s golden advice, “Be fearful when others are greedy and greedy when others are fearful.” Greed drives asset prices up while fear causes asset prices to dip. As counterintuitive as it sounds, economic downturns could be perfect buying opportunities!

    Being aware of these fundamental investment strategies can help you develop a go-to investing approach. You may even combine strategies, depending on market conditions and your investment goals. Think of today’s Investing 101 as a starting point for your investment journey.

    Let’s begin!

    1. Dollar-cost averaging

    Dollar-cost averaging is a strategy where small amounts of money are invested regularly in an asset. For instance, investing S$100 every month in a stock for a year is a form of dollar-cost averaging. You buy more of the stock when prices are low and you cut your purchases when prices are high. Due to your commitment to make consistent investments, your price per share eventually averages out.

    To maximise returns with dollar-cost averaging, you could invest more regularly when opportunities arise and cut back when prices rebound. Opportunities arise when prices dip or when markets crash.

    Over time, dollar-cost averaging reduces your exposure to price volatility. You no longer try to predict market movements. Instead, you are in it for the long haul.
"""), ModelCommunity(image: "com3", title: "FOMC Meeting: What Happens When Interest Rates Rise?", date: "August 03, 2021", viewer: "214", textContent: """
    By now, you should have built a resource library, opened an online brokerage account, and perhaps contemplated dipping your toes into some blue chips or ETFs. Are you then eager to start investing?

    Today’s Investing 101 introduces you to five basic investment strategies for beginners.

    As you digest the information, bear in mind that there is no one best investment strategy.

    The truth is that markets ebb and flow and investors are not as rational as we would like to think. We may become overly optimistic when times are good and overly pessimistic when the economy and markets lose steam.

    When the unexpected happens, remain calm. Remember Warren Buffett’s golden advice, “Be fearful when others are greedy and greedy when others are fearful.” Greed drives asset prices up while fear causes asset prices to dip. As counterintuitive as it sounds, economic downturns could be perfect buying opportunities!

    Being aware of these fundamental investment strategies can help you develop a go-to investing approach. You may even combine strategies, depending on market conditions and your investment goals. Think of today’s Investing 101 as a starting point for your investment journey.

    Let’s begin!

    1. Dollar-cost averaging

    Dollar-cost averaging is a strategy where small amounts of money are invested regularly in an asset. For instance, investing S$100 every month in a stock for a year is a form of dollar-cost averaging. You buy more of the stock when prices are low and you cut your purchases when prices are high. Due to your commitment to make consistent investments, your price per share eventually averages out.

    To maximise returns with dollar-cost averaging, you could invest more regularly when opportunities arise and cut back when prices rebound. Opportunities arise when prices dip or when markets crash.

    Over time, dollar-cost averaging reduces your exposure to price volatility. You no longer try to predict market movements. Instead, you are in it for the long haul.
"""), ModelCommunity(image: "com4", title: "Is Inflation Good or Bad For Stocks", date: "July 30, 2021", viewer: "214", textContent: """
    By now, you should have built a resource library, opened an online brokerage account, and perhaps contemplated dipping your toes into some blue chips or ETFs. Are you then eager to start investing?

    Today’s Investing 101 introduces you to five basic investment strategies for beginners.

    As you digest the information, bear in mind that there is no one best investment strategy.

    The truth is that markets ebb and flow and investors are not as rational as we would like to think. We may become overly optimistic when times are good and overly pessimistic when the economy and markets lose steam.

    When the unexpected happens, remain calm. Remember Warren Buffett’s golden advice, “Be fearful when others are greedy and greedy when others are fearful.” Greed drives asset prices up while fear causes asset prices to dip. As counterintuitive as it sounds, economic downturns could be perfect buying opportunities!

    Being aware of these fundamental investment strategies can help you develop a go-to investing approach. You may even combine strategies, depending on market conditions and your investment goals. Think of today’s Investing 101 as a starting point for your investment journey.

    Let’s begin!

    1. Dollar-cost averaging

    Dollar-cost averaging is a strategy where small amounts of money are invested regularly in an asset. For instance, investing S$100 every month in a stock for a year is a form of dollar-cost averaging. You buy more of the stock when prices are low and you cut your purchases when prices are high. Due to your commitment to make consistent investments, your price per share eventually averages out.

    To maximise returns with dollar-cost averaging, you could invest more regularly when opportunities arise and cut back when prices rebound. Opportunities arise when prices dip or when markets crash.

    Over time, dollar-cost averaging reduces your exposure to price volatility. You no longer try to predict market movements. Instead, you are in it for the long haul.
"""), ModelCommunity(image: "com5", title: "Putting the Red Dot on the Map", date: "August 07, 2021", viewer: "214", textContent: """
    By now, you should have built a resource library, opened an online brokerage account, and perhaps contemplated dipping your toes into some blue chips or ETFs. Are you then eager to start investing?

    Today’s Investing 101 introduces you to five basic investment strategies for beginners.

    As you digest the information, bear in mind that there is no one best investment strategy.

    The truth is that markets ebb and flow and investors are not as rational as we would like to think. We may become overly optimistic when times are good and overly pessimistic when the economy and markets lose steam.

    When the unexpected happens, remain calm. Remember Warren Buffett’s golden advice, “Be fearful when others are greedy and greedy when others are fearful.” Greed drives asset prices up while fear causes asset prices to dip. As counterintuitive as it sounds, economic downturns could be perfect buying opportunities!

    Being aware of these fundamental investment strategies can help you develop a go-to investing approach. You may even combine strategies, depending on market conditions and your investment goals. Think of today’s Investing 101 as a starting point for your investment journey.

    Let’s begin!

    1. Dollar-cost averaging

    Dollar-cost averaging is a strategy where small amounts of money are invested regularly in an asset. For instance, investing S$100 every month in a stock for a year is a form of dollar-cost averaging. You buy more of the stock when prices are low and you cut your purchases when prices are high. Due to your commitment to make consistent investments, your price per share eventually averages out.

    To maximise returns with dollar-cost averaging, you could invest more regularly when opportunities arise and cut back when prices rebound. Opportunities arise when prices dip or when markets crash.

    Over time, dollar-cost averaging reduces your exposure to price volatility. You no longer try to predict market movements. Instead, you are in it for the long haul.
""")]
    var body: some View {
        ForEach(listCommunity.indices , id: \.self){index in
            let item = listCommunity[index]
            NavigationLink {
                ActicleContent(image: item.image, title: item.title, date: item.date, viewer: item.viewer, textContent: item.textContent)
            } label: {
                Community(image: item.image, title: item.title, date: item.date, viewer: item.viewer)
            }

        }
    }
}

struct Community_Previews: PreviewProvider {
    static var previews: some View {
        Community()
    }
}
