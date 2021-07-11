.class public Lcom/android/keyguard/KeyguardAssistantView;
.super Ljava/lang/Object;
.source "KeyguardAssistantView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;,
        Lcom/android/keyguard/KeyguardAssistantView$Callback;,
        Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;
    }
.end annotation


# static fields
.field private static final mIsNoCustGoogleView:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllowShowNotification:Z

.field private mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

.field private mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/KeyguardAssistantView$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentChangeListener:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

.field private mDarkAmount:F

.field private final mDelayForSetGoogleSmartspaceChildViewHeight:Ljava/lang/Runnable;

.field private mEnableSmartSpace:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasHeader:Z

.field private mKeyguardStatusView:Landroid/view/View;

.field private mKeyguardViewUpdateListener:Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;

.field final mNotifyHasHeaderRunner:Ljava/lang/Runnable;

.field private mRetryTimes:I

.field private final mSettingObserver:Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.no.smartspace.custgoogleview"

    const/4 v1, 0x1

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardAssistantView;->mIsNoCustGoogleView:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyguardAssistantView"

    .line 47
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHasHeader:Z

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mDarkAmount:F

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mCallbacks:Ljava/util/List;

    const-string v1, "persist.enable.smartspace.lib"

    const/4 v2, 0x1

    .line 71
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mEnableSmartSpace:Z

    .line 75
    new-instance v1, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;-><init>(Lcom/android/keyguard/KeyguardAssistantView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mSettingObserver:Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    .line 76
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAllowShowNotification:Z

    .line 243
    new-instance v1, Lcom/android/keyguard/KeyguardAssistantView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAssistantView$1;-><init>(Lcom/android/keyguard/KeyguardAssistantView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mNotifyHasHeaderRunner:Ljava/lang/Runnable;

    .line 368
    iput v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mRetryTimes:I

    .line 371
    new-instance v1, Lcom/android/keyguard/KeyguardAssistantView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAssistantView$2;-><init>(Lcom/android/keyguard/KeyguardAssistantView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mDelayForSetGoogleSmartspaceChildViewHeight:Ljava/lang/Runnable;

    .line 441
    new-instance v1, Lcom/android/keyguard/KeyguardAssistantView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAssistantView$4;-><init>(Lcom/android/keyguard/KeyguardAssistantView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 84
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyguardAssistantView constructor, callers= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p2, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    .line 87
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string p3, "KeyguardAssistantView handler == null, new one"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 90
    :cond_0
    iput-object p3, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    .line 94
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mKeyguardStatusView:Landroid/view/View;

    .line 95
    sget p2, Lcom/android/systemui/R$id;->ambient_assistant_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/views/OpSmartspaceContainer;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    .line 98
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Lcom/oneplus/aod/views/OpSmartspaceContainer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 107
    new-instance p1, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;-><init>(Lcom/android/keyguard/KeyguardAssistantView$1;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mKeyguardViewUpdateListener:Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;

    .line 108
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;->setKeyguardAssistantView(Lcom/android/keyguard/KeyguardAssistantView;)V

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string p3, "lock_screen_show_notifications"

    invoke-static {p1, p3, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAllowShowNotification:Z

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mSettingObserver:Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->observe()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAssistantView;->notifyHasHeader()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardAssistantView;)Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mSettingObserver:Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/KeyguardAssistantView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAllowShowNotification:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAssistantView;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAssistantView;->setHasHeader(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/keyguard/KeyguardAssistantView;->mIsNoCustGoogleView:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAssistantView;->setGoogleSmartspaceChildViewHeight()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAssistantView;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAssistantView;->setGoogleSmartspaceChildViewHeightInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAssistantView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mRetryTimes:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardAssistantView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mRetryTimes:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/keyguard/KeyguardAssistantView;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mRetryTimes:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mDelayForSetGoogleSmartspaceChildViewHeight:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardAssistantView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    return-object p1
.end method

.method private getTextColor()I
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private notifyHasHeader()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardAssistantView$Callback;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHasHeader:Z

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardAssistantView$Callback;->onCardShownChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setGoogleSmartspaceChildViewHeight()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGoogleSmartspaceChildViewHeight, callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mDelayForSetGoogleSmartspaceChildViewHeight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mDelayForSetGoogleSmartspaceChildViewHeight:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setGoogleSmartspaceChildViewHeightInternal()Z
    .locals 6

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    sget v1, Lcom/android/systemui/R$id;->title_leading_truncatable:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 392
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_smart_space_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 393
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    sget v2, Lcom/android/systemui/R$id;->title_trailing_truncatable:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_smart_space_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    sget v2, Lcom/android/systemui/R$id;->subtitle_line:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardAssistantView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardAssistantView$3;-><init>(Lcom/android/keyguard/KeyguardAssistantView;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "viewGroup_subtitle_line params null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 406
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "title_trailing_truncatable params null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 395
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "title_leading_truncatable params null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private setHasHeader(Z)V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAllowShowNotification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHasHeader:Z

    .line 237
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mNotifyHasHeaderRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mNotifyHasHeaderRunner:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/keyguard/KeyguardAssistantView$Callback;)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAssistantView;->hasHeader()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardAssistantView$Callback;->onCardShownChanged(Z)V

    .line 343
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "KeyguardAssistantView:"

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDarkAmount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/keyguard/KeyguardAssistantView;->mDarkAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mHasHeader: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHasHeader:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mAllowShowNotification: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAllowShowNotification:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasHeader()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHasHeader:Z

    return p0
.end method

.method public inflateIndicatorContainer()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.enable.smartspace.lib"

    .line 141
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mEnableSmartSpace:Z

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mEnableSmartSpace:Z

    if-nez v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string v0, "not enable smartspace"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string v1, "Adding ambient contents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->create(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.apps.oemsmartspace.SMARTSPACE_TYPE_KEY"

    const-string v2, "com.google.android.apps.oemsmartspace.SMARTSPACE_FOR_SYSUI"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->op_nav_bar_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const-string v2, "com.google.android.apps.oemsmartspace.TEXT_COLOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.apps.oemsmartspace.SMARTSPACE_RESOURCE_PACKAGE"

    const-string v2, "net.oneplus.launcher"

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.oemsmartspace.SMARTSPACE_ENABLE_DATE_KEY"

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.apps.oemsmartspace.SMARTSPACE_SET_LEFT_ALIGNED_KEY"

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "0.8"

    .line 162
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "com.google.android.apps.oemsmartspace.SMARTSPACE_TEXT_SIZE_FACTOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mKeyguardViewUpdateListener:Lcom/android/keyguard/KeyguardAssistantView$KeyguardViewUpdateListener;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->setView(Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add ambient contents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->refresh()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/views/OpSmartspaceContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->unsetView()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mSettingObserver:Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->unObserve()V

    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardAssistantView$Callback;)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHideSensitiveData(Z)V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHideSensitiveData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->setHideSensitiveData(Z)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string p1, "setHideSensitiveData warnning, mController null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mAmbientIndicationContainer:Lcom/oneplus/aod/views/OpSmartspaceContainer;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVisibility warnning, mAmbientIndicationContainer null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateTextColor(Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-ne p1, v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->op_nav_bar_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAssistantView;->getTextColor()I

    move-result v0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTextColor, textColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", viewTypeEnum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.apps.oemsmartspace.TEXT_COLOR_KEY"

    .line 220
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView;->mController:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->setStyle(Landroid/os/Bundle;)V

    return-void
.end method
