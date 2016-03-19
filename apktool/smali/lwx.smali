.class final Llwx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Llwy;

    invoke-direct {v0}, Llwy;-><init>()V

    sput-object v0, Llwx;->a:Ljava/util/Iterator;

    .line 578
    new-instance v0, Llwz;

    invoke-direct {v0}, Llwz;-><init>()V

    sput-object v0, Llwx;->b:Ljava/lang/Iterable;

    return-void
.end method
