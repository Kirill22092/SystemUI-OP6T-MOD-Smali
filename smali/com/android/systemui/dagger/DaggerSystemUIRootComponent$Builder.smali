.class public final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 4270
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .locals 0

    .line 4270
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;
    .locals 0

    .line 4270
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/dagger/SystemUIRootComponent;
    .locals 2

    .line 4278
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    if-nez v0, :cond_0

    .line 4279
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider;

    invoke-direct {v0}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    .line 4281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    if-eqz v0, :cond_1

    .line 4285
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0

    .line 4282
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 4283
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contextHolder(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;
    .locals 0

    .line 4304
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method public dependencyProvider(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;
    .locals 0

    .line 4289
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/dagger/DependencyProvider;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    return-object p0
.end method
