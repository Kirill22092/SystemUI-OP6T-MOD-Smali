.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarComponentBuilder"
.end annotation


# instance fields
.field private statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    .line 5179
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 5179
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 5179
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;
    .locals 3

    .line 5184
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_0

    .line 5188
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0

    .line 5185
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 5186
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

.method public bridge synthetic statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;
    .locals 0

    .line 5179
    invoke-virtual {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;

    return-object p0
.end method

.method public statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;
    .locals 0

    .line 5194
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method
