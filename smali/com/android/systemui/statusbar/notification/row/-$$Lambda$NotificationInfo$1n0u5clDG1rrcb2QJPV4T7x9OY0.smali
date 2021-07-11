.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$bindHeader$3$NotificationInfo(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
