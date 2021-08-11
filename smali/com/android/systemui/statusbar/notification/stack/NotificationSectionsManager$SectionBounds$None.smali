.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
.source "NotificationSectionsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
