.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRowComponentBuilder"
.end annotation


# instance fields
.field private activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic activatableNotificationView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;->activatableNotificationView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;

    return-object p0
.end method

.method public activatableNotificationView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;
    .locals 0

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method public build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

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
