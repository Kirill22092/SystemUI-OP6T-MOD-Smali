.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideLeakDetectorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/leak/LeakDetector;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->proxyProvideLeakDetector(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLeakDetector(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider;->provideLeakDetector()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/leak/LeakDetector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->get()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method
