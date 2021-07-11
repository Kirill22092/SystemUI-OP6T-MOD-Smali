.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$HiHCQQS5efymKkG0o3cpzPgw1uI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$HiHCQQS5efymKkG0o3cpzPgw1uI;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$HiHCQQS5efymKkG0o3cpzPgw1uI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$HiHCQQS5efymKkG0o3cpzPgw1uI;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$HiHCQQS5efymKkG0o3cpzPgw1uI;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startHistoryIntent$12$StatusBarNotificationActivityStarter(Z)Z

    move-result p0

    return p0
.end method
