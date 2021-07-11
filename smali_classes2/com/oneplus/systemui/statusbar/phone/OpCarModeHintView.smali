.class public Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;
.super Landroid/widget/FrameLayout;
.source "OpCarModeHintView.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field public static final SHOW_OVAL_LAYOUT:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mHintShow:Z

.field private mOrientation:I

.field private mShowAnimation:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    const-string v0, "CarModeHintView"

    .line 45
    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->TAG:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomStatusBar()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->SHOW_OVAL_LAYOUT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHintShow:Z

    .line 60
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mContext:Landroid/content/Context;

    .line 61
    sget-boolean p2, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->SHOW_OVAL_LAYOUT:Z

    if-eqz p2, :cond_0

    sget p2, Lcom/android/systemui/R$layout;->carmode_highlight_hint_view_notch:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/systemui/R$layout;->carmode_highlight_view_without_notch:I

    .line 62
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHintShow:Z

    return p1
.end method

.method private getShowAnimation()Landroid/animation/Animator;
    .locals 3

    .line 189
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x96

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateHint()V
    .locals 6

    .line 82
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    if-eqz v0, :cond_4

    .line 83
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHint:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_car_mode_highlight_hint_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHint:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateLayout()V
    .locals 0

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 178
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHintShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHintShow:Z

    .line 181
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/16 v0, 0x8

    .line 185
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 131
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 132
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onCarModeHighlightHintInfoChange()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->updateHint()V

    return-void
.end method

.method public onCarModeHighlightHintStateChange(Z)V
    .locals 4

    .line 145
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v0

    .line 146
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarModeHighlightHintStateChange show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->updateHint()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->show(Z)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->hide()V

    :goto_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 117
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 118
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mOrientation:I

    .line 119
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->updateHint()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 138
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 139
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 68
    sget v0, Lcom/android/systemui/R$id;->notification_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHint:Landroid/widget/TextView;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->updateLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 162
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 164
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mHintShow:Z

    if-nez p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->getShowAnimation()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    .line 170
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
