.class Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field final synthetic val$hostLayout:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->val$hostLayout:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$400(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->val$hostLayout:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->updateNotificationIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method
