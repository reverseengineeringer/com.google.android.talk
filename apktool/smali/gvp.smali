.class Lgvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lgvp;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private static c(Lgvn;)Lgvs;
    .locals 1

    .prologue
    .line 2157
    invoke-interface {p0}, Lgvn;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lgvs;

    return-object v0
.end method


# virtual methods
.method public a(Lgvn;)F
    .locals 1

    .prologue
    .line 1148
    invoke-static {p1}, Lgvp;->c(Lgvn;)Lgvs;

    move-result-object v0

    invoke-virtual {v0}, Lgvs;->a()F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1034
    new-instance v0, Lgvo;

    invoke-direct {v0, p0}, Lgvo;-><init>(Lgvp;)V

    sput-object v0, Lgvs;->c:Laat;

    .line 1072
    return-void
.end method

.method public b(Lgvn;)F
    .locals 1

    .prologue
    .line 1153
    invoke-static {p1}, Lgvp;->c(Lgvn;)Lgvs;

    move-result-object v0

    invoke-virtual {v0}, Lgvs;->b()F

    move-result v0

    return v0
.end method
