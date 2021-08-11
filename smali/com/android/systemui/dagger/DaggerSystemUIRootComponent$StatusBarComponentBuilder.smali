.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarComponentBuilder"
.end annotation


# instance fields
.field private statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

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

.method public statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;
    .locals 0

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method public bridge synthetic statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;->statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;

    return-object p0
.end method
