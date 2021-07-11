.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$OPRingerModeTile$D10Y8Nnp2RSDj8Fard0JzbGWqHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPRingerModeTile$D10Y8Nnp2RSDj8Fard0JzbGWqHo;->f$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPRingerModeTile$D10Y8Nnp2RSDj8Fard0JzbGWqHo;->f$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->lambda$scheduleResetDebounce$0$OPRingerModeTile()V

    return-void
.end method
