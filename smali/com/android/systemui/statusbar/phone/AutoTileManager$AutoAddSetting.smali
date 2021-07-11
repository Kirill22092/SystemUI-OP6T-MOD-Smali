.class Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;
.super Lcom/android/systemui/qs/SecureSetting;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAddSetting"
.end annotation


# instance fields
.field private final mSpec:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 308
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 309
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;)Ljava/lang/String;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$handleValueChanged$0()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method

.method private synthetic lambda$handleValueChanged$1()V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 1

    .line 314
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 316
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$400(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$AutoAddSetting$b5h6ITGFUhhbZfNJqWDC6XxQfJE;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$AutoAddSetting$b5h6ITGFUhhbZfNJqWDC6XxQfJE;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 320
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    const-string p2, "custom("

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$300(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$300(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$400(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$AutoAddSetting$bs0leZa_T3XhOtGqbTRqC7ErikE;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$AutoAddSetting$bs0leZa_T3XhOtGqbTRqC7ErikE;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public synthetic lambda$handleValueChanged$0$AutoTileManager$AutoAddSetting()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->lambda$handleValueChanged$0()V

    return-void
.end method

.method public synthetic lambda$handleValueChanged$1$AutoTileManager$AutoAddSetting()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->lambda$handleValueChanged$1()V

    return-void
.end method
