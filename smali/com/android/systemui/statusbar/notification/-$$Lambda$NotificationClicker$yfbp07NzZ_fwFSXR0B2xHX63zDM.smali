.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$yfbp07NzZ_fwFSXR0B2xHX63zDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$yfbp07NzZ_fwFSXR0B2xHX63zDM;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$yfbp07NzZ_fwFSXR0B2xHX63zDM;->f$0:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->lambda$onClick$0(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method
