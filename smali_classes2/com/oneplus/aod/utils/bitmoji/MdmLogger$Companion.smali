.class public final Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;
.super Ljava/lang/Object;
.source "MdmLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMdmLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MdmLogger.kt\ncom/oneplus/aod/utils/bitmoji/MdmLogger$Companion\n*L\n1#1,333:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getSInstance()Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    new-instance v3, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    invoke-direct {v3, p1, v2}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->setSInstance(Lcom/oneplus/aod/utils/bitmoji/MdmLogger;)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getSInstance()Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getSInstance()Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->access$getSInstance$cp()Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    return-object p0
.end method

.method public final setSInstance(Lcom/oneplus/aod/utils/bitmoji/MdmLogger;)V
    .locals 0
    .param p1    # Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->access$setSInstance$cp(Lcom/oneplus/aod/utils/bitmoji/MdmLogger;)V

    return-void
.end method
