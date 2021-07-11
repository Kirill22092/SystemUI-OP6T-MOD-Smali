.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 4322
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Landroid/content/Context;
    .locals 0

    .line 4322
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;
    .locals 0

    .line 4322
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/tv/TvSystemUIRootComponent;
    .locals 2

    .line 4329
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    if-nez v0, :cond_0

    .line 4330
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider;

    invoke-direct {v0}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/dagger/DependencyProvider;

    .line 4332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4335
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0

    .line 4333
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/content/Context;

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

.method public context(Landroid/content/Context;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;
    .locals 0

    .line 4340
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic context(Landroid/content/Context;)Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;
    .locals 0

    .line 4322
    invoke-virtual {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;

    return-object p0
.end method
