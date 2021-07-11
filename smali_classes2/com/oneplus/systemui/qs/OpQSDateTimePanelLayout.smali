.class public Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;
.super Landroid/widget/FrameLayout;
.source "OpQSDateTimePanelLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mDateView:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private updateThemeColor()V
    .locals 2

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 64
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 65
    sget v0, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    if-ne p1, v0, :cond_1

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->useWallpaperTextColor(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 39
    sget v0, Lcom/android/systemui/R$id;->op_qs_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-direct {p0}, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;->updateThemeColor()V

    return-void
.end method
