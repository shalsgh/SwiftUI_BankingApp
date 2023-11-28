//
//  OffsetReader.swift
//  BankingApp
//
//  Created by minho on 2023/11/29.
//

import SwiftUI

/// Offset Preference Key

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

extension View {
    /// Offset View Modifier
    @ViewBuilder
    func offsetX(_ addObserver: Bool, completion: @escaping (CGRect) ->()) -> some View {
        self
            .frame(maxWidth: .infinity)
            .overlay {
                if addObserver {
                    GeometryReader {
                        let rect = $0.frame(in: .global)
                        
                        Color.clear
                            .preference(key: OffsetKey.self, value: rect)
                            .onPreferenceChange(OffsetKey.self, perform: completion)
                        // 봐라 내 최근의 비디오를 페이지탭뷰의 스크롤링 인디케이터에 대한 더 많은 정보를 위해 페이지 탭뷰오프셋에 대해, 거기에 내가 썼다 그 오프셋들을 만들기위해 부드러운 스크롤링 인디케이터를
                    }
                }
            }
    }
}
