.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationConversationTemplateViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationConversationTemplateViewWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationConversationTemplateViewWrapper.kt\ncom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,211:1\n10930#2,2:212\n10930#2,2:214\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationConversationTemplateViewWrapper.kt\ncom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper\n*L\n206#1,2:212\n209#1,2:214\n*E\n"
.end annotation


# instance fields
.field private appName:Landroid/view/View;

.field private conversationBadgeBg:Landroid/view/View;

.field private conversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private final conversationLayout:Lcom/android/internal/widget/ConversationLayout;

.field private conversationTitleView:Landroid/view/View;

.field private expandButton:Landroid/view/View;

.field private expandButtonContainer:Landroid/view/View;

.field private expandButtonInnerContainer:Landroid/view/View;

.field private facePileBottom:Landroid/view/View;

.field private facePileBottomBg:Landroid/view/View;

.field private facePileTop:Landroid/view/View;

.field private imageMessageContainer:Landroid/view/ViewGroup;

.field private importanceRing:Landroid/view/View;

.field private mActions:Landroid/view/ViewGroup;

.field private messagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private final minHeightWithActions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "row"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 46
    sget p3, Lcom/android/systemui/R$dimen;->notification_messaging_actions_min_height:I

    .line 44
    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->minHeightWithActions:I

    .line 48
    check-cast p2, Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    return-void
.end method

.method private final varargs addTransformedViews([Landroid/view/View;)V
    .locals 4

    .line 10930
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final varargs addViewsTransformingToSimilar([Landroid/view/View;)V
    .locals 4

    .line 10930
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final resolveViews()V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    const-string v1, "conversationLayout.messagingLinearLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->messagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getImageMessageContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "conversationLayout.imageMessageContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->imageMessageContainer:Landroid/view/ViewGroup;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    const v1, 0x102025f

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026l.R.id.conversation_icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v1, 0x1020261

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026nversation_icon_badge_bg)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    const v1, 0x102029c

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026ernal.R.id.expand_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButton:Landroid/view/View;

    const v1, 0x102029e

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026.expand_button_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButtonContainer:Landroid/view/View;

    const v1, 0x102029f

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026d_button_inner_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButtonInnerContainer:Landroid/view/View;

    const v1, 0x1020262

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026ersation_icon_badge_ring)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->importanceRing:Landroid/view/View;

    const v1, 0x10201e0

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026ernal.R.id.app_name_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->appName:Landroid/view/View;

    const v1, 0x1020265

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.andr\u2026l.R.id.conversation_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    const v1, 0x102025d

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileTop:Landroid/view/View;

    const v1, 0x102025b

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottom:Landroid/view/View;

    const v1, 0x102025c

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottomBg:Landroid/view/View;

    const v1, 0x10201b8

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(com.android.internal.R.id.actions)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->mActions:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const-string v2, "mActions"

    if-eqz v0, :cond_7

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->mActions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 98
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->mActions:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->mActions:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    .line 96
    invoke-virtual {v0, v3, v4, v5, p0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_0
    return-void

    .line 89
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public disallowSingleClick(FF)Z
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "expandButtonContainer"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_3

    .line 196
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->disallowSingleClick(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3

    .line 195
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getExpandButton()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButtonInnerContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "expandButtonInnerContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getMinLayoutHeight()I
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v1, "mActionsContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 201
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->minHeightWithActions:I

    goto :goto_0

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getMinLayoutHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const/4 v1, 0x0

    const-string v2, "conversationIconView"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_3
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->resolveViews()V

    .line 110
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->showHistoricMessages(Z)V

    return-void
.end method

.method public setShelfIconVisible(Z)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const/4 v1, 0x0

    const-string v2, "conversationIconView"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setShelfIconVisible(Z)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ConversationLayout;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 8

    .line 115
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->messagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->appName:Landroid/view/View;

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    if-eqz v2, :cond_5

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 117
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->addTransformedViews([Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 125
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper$updateTransformedTypes$1;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper$updateTransformedTypes$1;-><init>()V

    .line 147
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->imageMessageContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    .line 124
    invoke-virtual {v1, v2, v7}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/View;

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz v2, :cond_3

    aput-object v2, v1, v4

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    if-eqz v2, :cond_2

    aput-object v2, v1, v5

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandButton:Landroid/view/View;

    if-eqz v2, :cond_1

    aput-object v2, v1, v6

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->importanceRing:Landroid/view/View;

    if-eqz v2, :cond_0

    aput-object v2, v1, v0

    const/4 v0, 0x4

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileTop:Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottom:Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottomBg:Landroid/view/View;

    aput-object v2, v1, v0

    .line 150
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "importanceRing"

    .line 154
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "expandButton"

    .line 153
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "conversationBadgeBg"

    .line 152
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string p0, "conversationIconView"

    .line 151
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "imageMessageContainer"

    .line 147
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string p0, "conversationTitleView"

    .line 120
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string p0, "appName"

    .line 119
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    const-string p0, "messagingLinearLayout"

    .line 118
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
