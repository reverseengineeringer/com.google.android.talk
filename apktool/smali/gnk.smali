.class public final Lgnk;
.super Ljava/lang/Object;

# interfaces
.implements Latn;


# static fields
.field private static final a:Latn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Latn;"
        }
    .end annotation
.end field

.field private static final b:Lgnh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lgnj;

    invoke-direct {v0, v1}, Lgnj;-><init>(B)V

    sput-object v0, Lgnk;->a:Latn;

    new-instance v0, Lgnh;

    invoke-direct {v0, v1}, Lgnh;-><init>(B)V

    sput-object v0, Lgnk;->b:Lgnh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
