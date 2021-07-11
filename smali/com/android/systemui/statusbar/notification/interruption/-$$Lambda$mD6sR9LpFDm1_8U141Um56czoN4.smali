.class public final synthetic Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$mD6sR9LpFDm1_8U141Um56czoN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$mD6sR9LpFDm1_8U141Um56czoN4;->f$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method


# virtual methods
.method public final onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$mD6sR9LpFDm1_8U141Um56czoN4;->f$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
