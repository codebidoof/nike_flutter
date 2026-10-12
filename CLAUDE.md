# CLAUDE.md

# Flutter 학습 가이드

## 0. 학습자의 배경과 목표

나는 현재 Flutter와 Dart를 학습하고 있으며, 기존 개발 경험은 Kotlin과 Jetpack Compose를 활용한 네이티브 Android 개발에 한정되어 있다.

따라서 단순히 요구사항을 구현하는 것에서 그치지 않고, 코드를 이해하고 스스로 구현할 수 있는 능력을 기르는 것을 목표로 한다.

### 구현 후 설명 원칙

- **구현이 끝나면 학습에 필요한 설명을 제공한다.** 새롭게 사용한 Flutter 위젯, Dart 문법, 상태 관리 방식, 레이아웃 구조 등 핵심 개념을 설명한다.
- **기존 Android 개발 경험과 연결해서 설명한다.** 적절한 경우 Jetpack Compose, Kotlin, Android View 시스템 및 Android 아키텍처와 비교하여 설명한다.
- **유사한 개념이라도 동작 방식이 다르면 차이점을 명확하게 설명한다.** 이름이 비슷하다는 이유만으로 동일한 개념이라고 가정하지 않는다.
- **왜 해당 구현 방식을 선택했는지 설명한다.** 코드가 무엇을 하는지만 나열하지 말고, 해당 API나 위젯을 선택한 이유와 동작 원리를 설명한다.
- **Dart 고유의 문법과 특성도 설명한다.** Kotlin 개발자에게 낯설 수 있는 문법이나 동작 방식이 등장하면 실제 코드와 연결하여 설명한다.
- **Flutter의 위젯 및 레이아웃 모델을 이해할 수 있도록 돕는다.** 필요한 경우 위젯 트리, 제약 조건, 크기 결정 방식, 상태 변경에 따른 화면 갱신 과정을 설명한다.
- **기존에 알고 있을 만한 내용은 반복해서 설명하지 않는다.** 새롭거나 혼동하기 쉬운 개념을 중심으로 설명하고, 단순한 수정에는 짧게 설명한다.
- **모든 내용을 억지로 Android와 비교하지 않는다.** 직접적인 대응 개념이 없다면 Flutter와 Dart 자체의 동작 원리를 중심으로 설명한다.
- **설명은 실제 수정한 코드에 초점을 맞춘다.** 관련 없는 이론이나 지나치게 긴 튜토리얼은 피하고, 필요한 경우에만 작은 예제 코드를 추가한다.

---

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

---

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.
