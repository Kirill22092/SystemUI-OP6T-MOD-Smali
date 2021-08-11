.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->proxyProvideHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideHandler()Landroid/os/Handler;
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->provideInstance()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
