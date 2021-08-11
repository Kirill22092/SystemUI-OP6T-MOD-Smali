.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;
.super Ljava/lang/Object;
.source "NotificationShadeWindowController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;I)V

    return-void
.end method
