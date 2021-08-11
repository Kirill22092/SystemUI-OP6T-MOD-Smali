.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;
.super Ljava/lang/Object;
.source "ActivatableNotificationViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$000(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    return-void
.end method
