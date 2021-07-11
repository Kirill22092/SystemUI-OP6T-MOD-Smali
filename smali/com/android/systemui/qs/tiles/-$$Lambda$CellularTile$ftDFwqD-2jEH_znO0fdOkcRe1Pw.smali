.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/CellularTile;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;->f$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iput p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;->f$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;->f$1:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->lambda$showEnableDialog$1$CellularTile(ILandroid/content/DialogInterface;I)V

    return-void
.end method
