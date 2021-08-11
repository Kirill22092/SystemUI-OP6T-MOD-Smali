.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;->f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;->f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onActivityHidden$4$PipManager$PipManagerPinnedStackListener(Landroid/content/ComponentName;)V

    return-void
.end method
