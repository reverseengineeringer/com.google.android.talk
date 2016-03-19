.class public final Lien;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lce;

.field public f:Landroid/view/View;

.field public final synthetic g:Lan;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lan;)V
    .locals 1

    .prologue
    .line 2447
    iput-object p1, p0, Lien;->g:Lan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2448
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lien;->c:Lhq;

    .line 2449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lien;->d:Ljava/util/ArrayList;

    .line 2451
    new-instance v0, Lce;

    invoke-direct {v0}, Lce;-><init>()V

    iput-object v0, p0, Lien;->e:Lce;

    return-void
.end method
