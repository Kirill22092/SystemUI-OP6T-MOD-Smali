.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideMainLooperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Looper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->proxyProvideMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideMainLooper()Landroid/os/Looper;
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->provideInstance()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->get()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
