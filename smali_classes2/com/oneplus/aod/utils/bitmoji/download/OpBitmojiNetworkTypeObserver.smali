.class public final Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "OpBitmojiNetworkTypeObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpBitmojiNetworkTypeObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpBitmojiNetworkTypeObserver.kt\ncom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver\n*L\n1#1,109:1\n*E\n"
.end annotation


# static fields
.field private static final REQUEST:Landroid/net/NetworkRequest;

.field private static final TAG:Ljava/lang/String; = "OpBitmojiNetworkTypeObserver"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

.field private mNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mListener:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "context.getSystemService\u2026ivityManager::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getMNetworkType$p(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    return p0
.end method

.method private final updateCurrentNetworkType()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    :cond_1
    const/4 v0, -0x1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v4

    :cond_3
    :goto_1
    iget v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    if-eq v1, v0, :cond_5

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network type change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mListener:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final isNetworkTypeMobile()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNetworkTypeWifi()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNetworkUnavailable()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mNetworkType:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "network"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkCapabilities;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->updateCurrentNetworkType()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->updateCurrentNetworkType()V

    return-void
.end method

.method public final prepare()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->updateCurrentNetworkType()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->REQUEST:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
