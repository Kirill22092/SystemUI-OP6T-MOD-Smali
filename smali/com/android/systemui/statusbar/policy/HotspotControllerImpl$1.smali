.class Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetherableInterfaceRegexpsChanged(Landroid/net/TetheringManager$TetheringInterfaceRegexps;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->getTetherableWifiRegexs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$202(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    :cond_1
    return-void
.end method

.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTetheredInterfacesChanged size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HotspotController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTetheredInterfacesChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTetheringSupported(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$002(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    :cond_0
    return-void
.end method

.method public onUpstreamChanged(Landroid/net/Network;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Landroid/net/Network;)Landroid/net/Network;

    return-void
.end method
