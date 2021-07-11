.class public Lcom/oneplus/aod/slice/OpSliceManager;
.super Ljava/lang/Object;
.source "OpSliceManager.java"

# interfaces
.implements Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/slice/OpSliceManager$Callback;,
        Lcom/oneplus/aod/slice/OpSliceManager$H;,
        Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PRIORITY:[I


# instance fields
.field private mAllowShowSensitiveData:Z

.field private mCalendarEnabled:Z

.field private mClockController:Lcom/oneplus/aod/controller/IOpClockController;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

.field private mIcon:Landroid/widget/ImageView;

.field private mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

.field public mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

.field private mListening:Z

.field private mMusicInfoEnabled:Z

.field private mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

.field private mPrimary:Landroid/widget/TextView;

.field private mRemark:Landroid/widget/TextView;

.field private mSecondary:Landroid/widget/TextView;

.field private mSettingsObserver:Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

.field private final mSleepStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mSlices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/aod/slice/OpSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartDisplayCurState:Z

.field private mSmartDisplayEnabled:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mUserId:I

.field private mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

.field private mViewInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 57
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/oneplus/aod/slice/OpSliceManager$H;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/slice/OpSliceManager$H;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    .line 68
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    .line 69
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    .line 70
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mAllowShowSensitiveData:Z

    .line 81
    new-instance v1, Lcom/oneplus/aod/slice/OpSliceManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/slice/OpSliceManager$1;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    .line 345
    new-instance v1, Lcom/oneplus/aod/slice/OpSliceManager$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/slice/OpSliceManager$2;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSleepStateReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    .line 92
    iput-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    .line 93
    new-instance p1, Lcom/oneplus/aod/slice/OpSliceManager$Callback;

    invoke-direct {p1, p0, p0}, Lcom/oneplus/aod/slice/OpSliceManager$Callback;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;Lcom/oneplus/aod/slice/OpSliceManager;)V

    .line 95
    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/slice/OpMusicSlice;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/oneplus/aod/slice/OpMusicSlice;-><init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    invoke-virtual {p2, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/oneplus/aod/slice/OpWeatherSlice;-><init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    invoke-virtual {p2, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/slice/OpCalendarSlice;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/oneplus/aod/slice/OpCalendarSlice;-><init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance p1, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSettingsObserver:Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/slice/OpSliceManager;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->refresh(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/slice/OpSliceManager;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mAllowShowSensitiveData:Z

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mAllowShowSensitiveData:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->updateEnabled()V

    return-void
.end method

.method private clearAssistantViewIfPossible()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->removeCallback(Lcom/android/keyguard/KeyguardAssistantView$Callback;)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->release()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    :cond_0
    return-void
.end method

.method private getActiveSlice()I
    .locals 9

    .line 319
    sget-object v0, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->isKeyguardAssistantViewActiveInSlice()Z

    move-result v1

    const-string v2, "OpSliceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveSlice return TYPE_NONE, mAllowShowSensitiveData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mAllowShowSensitiveData:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 325
    :cond_0
    array-length v1, v0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 327
    iget-object v5, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    aget v6, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/aod/slice/OpSlice;

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSlice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v4

    invoke-direct {p0, v7}, Lcom/oneplus/aod/slice/OpSliceManager;->getSliceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " priority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    const-string v7, " slice is null"

    goto :goto_1

    .line 330
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isActive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oneplus/aod/slice/OpSlice;->isActive()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    .line 332
    invoke-virtual {v5}, Lcom/oneplus/aod/slice/OpSlice;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    aget p0, v0, v4

    return p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private getSliceName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "calendar"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "music"

    return-object p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-string p0, "weather"

    return-object p0

    :cond_2
    const-string p0, "none"

    return-object p0
.end method

.method private initAssitantView()V
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAssitantView, stack:, callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSliceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->clearAssistantViewIfPossible()V

    .line 182
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    .line 183
    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->isAodNoneClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardAssistantView;

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardAssistantView;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->addCallback(Lcom/android/keyguard/KeyguardAssistantView$Callback;)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->inflateIndicatorContainer()V

    .line 191
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mAllowShowSensitiveData:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardAssistantView;->setHideSensitiveData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isKeyguardAssistantViewActiveInSlice()Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAssistantView;->hasHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Lcom/oneplus/aod/slice/OpSlice;)V
    .locals 0

    .line 495
    invoke-virtual {p1, p0}, Lcom/oneplus/aod/slice/OpSlice;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$refresh$2()V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->refreshInternal()V

    return-void
.end method

.method private synthetic lambda$refresh$3()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->refreshInternal()V

    return-void
.end method

.method static synthetic lambda$setListening$1(ZLcom/oneplus/aod/slice/OpSlice;)V
    .locals 0

    .line 167
    invoke-virtual {p1, p0}, Lcom/oneplus/aod/slice/OpSlice;->setListening(Z)V

    return-void
.end method

.method private synthetic lambda$updateAssistantView$0()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->isKeyguardAssistantViewActiveInSlice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mAllowShowSensitiveData:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardAssistantView;->setHideSensitiveData(Z)V

    return-void
.end method

.method private refresh(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$CxwC4BVgWsvWi0aWldF3eHFjfUY;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$CxwC4BVgWsvWi0aWldF3eHFjfUY;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bu2Far_RdiKeyiAbaIXdgVh9rUU;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bu2Far_RdiKeyiAbaIXdgVh9rUU;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private refreshInternal()V
    .locals 9

    .line 224
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewInit:Z

    const-string v1, "OpSliceManager"

    if-nez v0, :cond_0

    const-string p0, "view has not init yet."

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->getActiveSlice()I

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/slice/OpSlice;

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slice count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", refresh to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->getSliceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->isKeyguardAssistantViewActiveInSlice()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->shouldSliceContainerBeVisible()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    if-eqz v2, :cond_4

    .line 241
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v3}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getIcon()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getPrimaryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getSecondaryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 251
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->shouldSliceContainerBeVisible()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 257
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v3}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    .line 264
    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getIcon()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getPrimaryString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getSecondaryString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSlice;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateSliceView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 275
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    .line 276
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateSliceView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->updateAssistantView()V

    return-void
.end method

.method private shouldSliceContainerBeVisible()I
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowSliceInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method private updateAssistantView()V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAssistantView, stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSliceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-nez v0, :cond_0

    const-string p0, "updateAssistantView mKeyguardAssistantView == null, no launch slicerVersionSmartSapce"

    .line 130
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$qANlgc44vucdC7lXl8SxHFtf5Hg;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$qANlgc44vucdC7lXl8SxHFtf5Hg;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateEnabled()V
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 199
    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    .line 200
    :goto_1
    iget v5, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 202
    iget-boolean v5, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-ne v1, v3, :cond_3

    .line 204
    iget-boolean v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 207
    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/slice/OpSlice;

    invoke-virtual {v1, v4}, Lcom/oneplus/aod/slice/OpSlice;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 495
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$EMJ3LU0vgSjo3IF642krw44r6k4;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$EMJ3LU0vgSjo3IF642krw44r6k4;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 6

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initViews, stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSliceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/oneplus/aod/slice/OpSliceContainer;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    .line 105
    sget v0, Lcom/android/systemui/R$id;->slice_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/android/systemui/R$id;->slice_primary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/android/systemui/R$id;->slice_remark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->slice_secondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    .line 109
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    iget v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/slice/OpSliceContainer;->setUserId(I)V

    .line 110
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {p1, v0}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->initAssitantView()V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->clearAssistantViewIfPossible()V

    .line 116
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewInit:Z

    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSettingsObserver:Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

    invoke-virtual {p1}, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->observe()V

    .line 118
    new-instance v3, Landroid/content/IntentFilter;

    const-string p1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-direct {v3, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p1, "com.android.systemui.intent.SLEEP_CHANGED"

    .line 119
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSleepStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewInit:Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$refresh$2$OpSliceManager()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$refresh$2()V

    return-void
.end method

.method public synthetic lambda$refresh$3$OpSliceManager()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$refresh$3()V

    return-void
.end method

.method public synthetic lambda$updateAssistantView$0$OpSliceManager()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$updateAssistantView$0()V

    return-void
.end method

.method public onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 7

    const-string v0, "OpSliceManager"

    const-string v1, "receive onClockChanged"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    .line 503
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    .line 506
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateSliceView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    .line 509
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-nez p1, :cond_2

    .line 510
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->initAssitantView()V

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->clearAssistantViewIfPossible()V

    if-eqz p1, :cond_2

    .line 517
    invoke-interface {p1}, Lcom/oneplus/aod/controller/IOpClockController;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    :cond_2
    :goto_0
    return-void
.end method

.method public onInitiativePulse()V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/slice/OpSlice;

    if-eqz p0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    check-cast p0, Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->onUserActive()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/slice/OpSlice;

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->onTimeChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 340
    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    .line 341
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/slice/OpSliceContainer;->setUserId(I)V

    .line 342
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->updateEnabled()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListening, mUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartDisplayEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listening:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mListening:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOpKeyguardClockInfoView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mOpKeyguardClockInfoView:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 150
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSliceManager"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    if-eqz v0, :cond_0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do not active slices since current user is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    if-nez v0, :cond_1

    const-string p0, "Do not active slices since smart aod is disabled"

    .line 159
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 166
    :cond_2
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    .line 167
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$jKMwOIyYHukafoZWADnNkJ6OnYU;

    invoke-direct {v1, p1}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$jKMwOIyYHukafoZWADnNkJ6OnYU;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 168
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
