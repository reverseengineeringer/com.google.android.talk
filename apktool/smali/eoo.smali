.class public final Leoo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lezi;->r:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leoo;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    const/4 v0, 0x0

    iput v0, p0, Leoo;->b:I

    .line 33
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const-string v0, "<none>"

    .line 117
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 101
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 104
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 107
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 110
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 113
    const-string v1, "MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v0

    invoke-virtual {v0}, Laei;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Leoo;->b:I

    .line 135
    if-eqz p2, :cond_3

    .line 136
    iget v1, p0, Leoo;->b:I

    or-int/2addr v1, p1

    iput v1, p0, Leoo;->b:I

    .line 143
    :goto_1
    if-eqz p3, :cond_2

    .line 144
    if-nez v0, :cond_2

    iget v1, p0, Leoo;->b:I

    if-eqz v1, :cond_2

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1160
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->aG:I

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1161
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_2
    iget v1, p0, Leoo;->b:I

    if-eq v0, v1, :cond_0

    .line 152
    sget-boolean v0, Leoo;->a:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Babel_SMS"

    .line 154
    invoke-static {p1}, Leoo;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Leoo;->b:I

    invoke-static {v2}, Leoo;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "updateState: oldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " new state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 153
    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_3
    iget v1, p0, Leoo;->b:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Leoo;->b:I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Leoo;->b:I

    and-int/lit8 v0, v0, 0x11

    iput v0, p0, Leoo;->b:I

    .line 51
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    const/16 v2, 0x10

    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lenn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    invoke-direct {p0, v2, v0, v1}, Leoo;->a(IZZ)V

    .line 75
    return-void

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v0

    invoke-virtual {v0}, Laei;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, v2, v1, v1}, Leoo;->a(IZZ)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, v2, v2, v1}, Leoo;->a(IZZ)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 92
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Leoo;->a(IZZ)V

    .line 93
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Leoo;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
