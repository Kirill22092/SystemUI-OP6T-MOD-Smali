.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$5$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method
