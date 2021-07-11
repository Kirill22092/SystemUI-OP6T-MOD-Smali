.class Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;
.super Landroid/telephony/OpPhoneStateListener;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpMobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1977
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1978
    invoke-direct {p0, p2}, Landroid/telephony/OpPhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onImsCapabilityStatusChange([Z)V
    .locals 5

    .line 1988
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1993
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1994
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    aget-boolean v4, p1, v1

    if-eq v3, v4, :cond_0

    .line 1998
    aget-boolean v2, p1, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    goto :goto_1

    .line 2000
    :cond_0
    aget-boolean v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v3, ","

    .line 2002
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2004
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$802(Lcom/android/systemui/statusbar/policy/MobileSignalController;[Z)[Z

    if-nez v2, :cond_2

    .line 2007
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 2008
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsCapabilityStatusChange:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz p0, :cond_4

    if-eqz v2, :cond_4

    .line 2013
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    :cond_4
    return-void
.end method
