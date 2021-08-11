.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRowComponentImpl"
.end annotation


# instance fields
.field private activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->initialize(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;)V

    return-void
.end method

.method private getExpandableOutlineViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->getExpandableViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;)V

    return-object v0
.end method

.method private getExpandableViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;->access$18900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-void
.end method


# virtual methods
.method public getActivatableNotificationViewController()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->getExpandableOutlineViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$16400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v0
.end method
