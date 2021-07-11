.class public Lcom/oneplus/systemui/statusbar/policy/OpClock;
.super Landroid/widget/TextView;
.source "OpClock.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mAlwaysVisible:Z

.field protected mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-class p3, Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->TAG:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->Clock:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->Clock_alwaysVisible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mAlwaysVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->needLargeQSClock(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mAlwaysVisible:Z

    .line 91
    :cond_0
    const-class p1, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    return-void

    :catchall_0
    move-exception p0

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    throw p0
.end method

.method private getShowSeconds()Z
    .locals 2

    .line 185
    const-class v0, Lcom/android/systemui/statusbar/policy/Clock;

    const-string v1, "mShowSeconds"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private updateShowSeconds()V
    .locals 3

    .line 180
    const-class v0, Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateShowSeconds"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 100
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 109
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->TAG:Ljava/lang/String;

    const-string v1, "onHighlightHintStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;->updateShowSeconds()V

    return-void
.end method

.method protected opShowSeconds()Z
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mAlwaysVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;->getShowSeconds()Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected setTextWithOpStyle(Ljava/lang/CharSequence;)V
    .locals 5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move v2, v1

    .line 139
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    add-int/lit8 p1, v2, 0x1

    const-string v3, "\u16ec"

    .line 143
    invoke-virtual {v0, v2, p1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    .line 151
    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 163
    :cond_2
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v2, v1

    :goto_2
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_3

    const/16 v3, 0x11

    .line 166
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 167
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 175
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
