.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->lambda$static$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
