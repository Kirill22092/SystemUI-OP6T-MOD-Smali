.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Lcom/android/systemui/statusbar/BackDropView;


# direct methods
.method public synthetic constructor <init>(FLcom/android/systemui/statusbar/BackDropView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;->f$0:F

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;->f$1:Lcom/android/systemui/statusbar/BackDropView;

    return-void
.end method


# virtual methods
.method public final onWallpaperZoomOutChanged(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;->f$0:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;->f$1:Lcom/android/systemui/statusbar/BackDropView;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$5(FLcom/android/systemui/statusbar/BackDropView;F)V

    return-void
.end method
