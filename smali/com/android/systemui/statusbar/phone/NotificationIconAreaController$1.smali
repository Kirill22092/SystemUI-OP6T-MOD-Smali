.class Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onStatusBarIconsBehaviorChanged$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStatusBarIconsBehaviorChanged(Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$002(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$1$F-ZVsKkbPSRU4H30qwlEgegraRE;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$1$F-ZVsKkbPSRU4H30qwlEgegraRE;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v3

    const/4 v4, 0x0

    xor-int/lit8 v5, p1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    :cond_0
    return-void
.end method
