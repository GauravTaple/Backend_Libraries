package com.pdfbox.example.service;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.w3c.css.sac.InputSource;
import com.steadystate.css.parser.CSSOMParser;
import com.steadystate.css.dom.CSSStyleDeclarationImpl;

public class CSSUtils {

    public static Map<String, CSSStyleDeclarationImpl> parseCSS(File cssFile) throws IOException {
        Map<String, CSSStyleDeclarationImpl> styleMap = new HashMap<>();
        CSSOMParser parser = new CSSOMParser();

        try (FileReader reader = new FileReader(cssFile)) {
            org.w3c.dom.css.CSSStyleSheet sheet = parser.parseStyleSheet(new InputSource(reader), null, null);
            org.w3c.dom.css.CSSRuleList rules = sheet.getCssRules();

            for (int i = 0; i < rules.getLength(); i++) {
                if (rules.item(i) instanceof org.w3c.dom.css.CSSStyleRule) {
                    org.w3c.dom.css.CSSStyleRule rule = (org.w3c.dom.css.CSSStyleRule) rules.item(i);
                    styleMap.put(rule.getSelectorText(), (CSSStyleDeclarationImpl) rule.getStyle());
                }
            }
        }

        return styleMap;
    }
}
