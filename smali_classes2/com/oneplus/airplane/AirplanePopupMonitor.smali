.class public Lcom/oneplus/airplane/AirplanePopupMonitor;
.super Ljava/lang/Object;
.source "AirplanePopupMonitor.java"


# static fields
.field private static sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;


# instance fields
.field public mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

.field mCallback:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    iput-object p1, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/airplane/AirplanePopupMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->unRegisterReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/airplane/AirplanePopupMonitor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/airplane/AirplanePopupMonitor;
    .locals 1

    sget-object v0, Lcom/oneplus/airplane/AirplanePopupMonitor;->sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-direct {v0, p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/airplane/AirplanePopupMonitor;->sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;

    :cond_0
    sget-object p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;

    return-object p0
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private registerReceiver()V
    .locals 2

    const-class v0, Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registering BootCompleteCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/BootCompleteCacheImpl;->addListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)Z

    :cond_0
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BootCompleteCacheImpl;->removeListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const-class v0, Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    :cond_0
    new-instance v0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;

    invoke-direct {v0, p0}, Lcom/oneplus/airplane/AirplanePopupMonitor$1;-><init>(Lcom/oneplus/airplane/AirplanePopupMonitor;)V

    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    invoke-direct {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->registerReceiver()V

    return-void
.end method
