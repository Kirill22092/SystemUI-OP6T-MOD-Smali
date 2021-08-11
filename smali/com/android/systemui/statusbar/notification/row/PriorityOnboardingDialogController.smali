.class public final Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;
.super Ljava/lang/Object;
.source "PriorityOnboardingDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPriorityOnboardingDialogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PriorityOnboardingDialogController.kt\ncom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController\n*L\n1#1,271:1\n*E\n"
.end annotation


# instance fields
.field private final IMPORTANCE_ANIM_DELAY:J

.field private final IMPORTANCE_ANIM_GROW_DURATION:J

.field private final IMPORTANCE_ANIM_SHRINK_DELAY:J

.field private final IMPORTANCE_ANIM_SHRINK_DURATION:J

.field private final OVERSHOOT:Landroid/view/animation/Interpolator;

.field private final badge:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dialog:Landroid/app/Dialog;

.field private final icon:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ignoresDnd:Z

.field private final onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

.field private final showsAsBubble:Z

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final wmFlags:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;ZZLandroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConversationSettingsClickListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badge"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->ignoresDnd:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->showsAsBubble:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->badge:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ecccccd    # 0.4f

    const/4 p3, 0x0

    const p4, 0x3e4ccccd    # 0.2f

    const p5, 0x3fb33333    # 1.4f

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->OVERSHOOT:Landroid/view/animation/Interpolator;

    const-wide/16 p1, 0x96

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_DELAY:J

    const-wide/16 p1, 0xfa

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_GROW_DURATION:J

    const-wide/16 p1, 0xc8

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DURATION:J

    const-wide/16 p1, 0x19

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DELAY:J

    const/high16 p1, -0x7efc0000

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->wmFlags:I

    return-void
.end method

.method public static final synthetic access$done(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->done()V

    return-void
.end method

.method public static final synthetic access$settings(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->settings()V

    return-void
.end method

.method private final done()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    const-string v1, "HasUserSeenPriorityOnboarding"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final initDialog()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    const-string v3, "dialog"

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_c

    const-string/jumbo v5, "\u00a0"

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_b

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget v5, Lcom/android/systemui/R$id;->done_button:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$$inlined$apply$lambda$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v5, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$$inlined$apply$lambda$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v5, Lcom/android/systemui/R$id;->conversation_icon:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget v5, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->badge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget v5, Lcom/android/systemui/R$id;->conversation_icon_badge_ring:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/R$id;->conversation_icon_badge_bg:I

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const-string v7, "mImportanceRingView"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    if-eqz v7, :cond_a

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const-string v9, "conversationIconBadgeBg"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_9

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x106012b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x105014f

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105014d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105014e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    mul-int/lit8 v14, v10, 0x2

    sub-int/2addr v13, v14

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x10500dd

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    new-instance v14, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;

    invoke-direct {v14, v7, v8, v13, v5}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;-><init>(Landroid/graphics/drawable/GradientDrawable;IILandroid/widget/ImageView;)V

    const/4 v5, 0x2

    new-array v7, v5, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    aput v12, v7, v4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-string v15, "ValueAnimator.ofInt(0, largeThickness)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v16, v3

    iget-wide v2, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_GROW_DURATION:J

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v5, [I

    aput v12, v2, v8

    aput v10, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-string v3, "ValueAnimator.ofInt(larg\u2026kness, standardThickness)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DELAY:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;

    invoke-direct {v4, v9, v13, v6, v11}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;-><init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/widget/ImageView;I)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-wide v5, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_DELAY:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v7, v5, v8

    const/4 v3, 0x1

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->conversation_onboarding_bullet_gap_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_show_at_top_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v3, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_show_avatar_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v3, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->showsAsBubble:Z

    if-eqz v5, :cond_5

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_appear_as_bubble_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v3, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :cond_5
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->ignoresDnd:Z

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_ignores_dnd_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v3, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :cond_6
    sget v2, Lcom/android/systemui/R$id;->behaviors:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->wmFlags:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x7e1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setType(I)V

    const v0, 0x1030056

    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v2, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "attributes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_7
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_8
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v16, v3

    const/4 v0, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v16, v3

    const/4 v0, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v16, v3

    const/4 v0, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need a window for the onboarding dialog to show"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final settings()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    const-string v1, "HasUserSeenPriorityOnboarding"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;->onClick()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->initDialog()V

    return-void
.end method

.method public final show()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
