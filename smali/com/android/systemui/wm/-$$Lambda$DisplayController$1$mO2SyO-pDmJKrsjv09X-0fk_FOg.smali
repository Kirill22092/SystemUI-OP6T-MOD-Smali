.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayController$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayController$1;ILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;->f$0:Lcom/android/systemui/wm/DisplayController$1;

    iput p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;->f$2:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;->f$0:Lcom/android/systemui/wm/DisplayController$1;

    iget v1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;->f$2:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wm/DisplayController$1;->lambda$onDisplayConfigurationChanged$1$DisplayController$1(ILandroid/content/res/Configuration;)V

    return-void
.end method
