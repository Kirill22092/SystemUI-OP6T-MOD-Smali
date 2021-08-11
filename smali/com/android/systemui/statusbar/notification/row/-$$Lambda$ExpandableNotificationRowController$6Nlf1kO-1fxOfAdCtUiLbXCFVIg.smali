.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$6Nlf1kO-1fxOfAdCtUiLbXCFVIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$6Nlf1kO-1fxOfAdCtUiLbXCFVIg;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$6Nlf1kO-1fxOfAdCtUiLbXCFVIg;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->lambda$setLongPressListenerIfNeeded$0$ExpandableNotificationRowController(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method
