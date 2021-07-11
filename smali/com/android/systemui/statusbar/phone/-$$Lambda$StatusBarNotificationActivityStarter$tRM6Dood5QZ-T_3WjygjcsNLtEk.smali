.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tRM6Dood5QZ-T_3WjygjcsNLtEk;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationIntent$5$StatusBarNotificationActivityStarter(IZ)V

    return-void
.end method
