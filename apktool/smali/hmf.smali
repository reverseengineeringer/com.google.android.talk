.class Lhmf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Llyi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lhni;

.field final b:Lhmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhmj",
            "<TM;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lhnj;

.field final e:Lhlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhlv",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhmd;I)V
    .locals 2

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    new-instance v0, Lhni;

    invoke-interface {p1}, Lhmd;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lhni;-><init>(I)V

    iput-object v0, p0, Lhmf;->a:Lhni;

    .line 2022
    sget v0, Lhmk;->a:I

    if-ne v0, p2, :cond_0

    .line 2023
    new-instance v0, Lhmi;

    .line 2052
    invoke-direct {v0, p0}, Lhmi;-><init>(Lhmf;)V

    .line 2023
    iput-object v0, p0, Lhmf;->b:Lhmj;

    .line 2027
    :goto_0
    invoke-interface {p1}, Lhmd;->a()Z

    move-result v0

    iput-boolean v0, p0, Lhmf;->c:Z

    .line 2028
    return-void

    .line 2025
    :cond_0
    new-instance v0, Lhmg;

    .line 2060
    invoke-direct {v0, p0}, Lhmg;-><init>(Lhmf;)V

    .line 2025
    iput-object v0, p0, Lhmf;->b:Lhmj;

    goto :goto_0
.end method

.method constructor <init>(Lhnj;Lhlv;Lhmd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhnj;",
            "Lhlv",
            "<TM;>;",
            "Lhmd;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4029
    invoke-direct {p0, p3, p4}, Lhmf;-><init>(Lhmd;I)V

    .line 4030
    iput-object p1, p0, Lhmf;->d:Lhnj;

    .line 4031
    iput-object p2, p0, Lhmf;->e:Lhlv;

    .line 4032
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Llyi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lhmf;->b:Lhmj;

    invoke-interface {v0, p1, p2}, Lhmj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lhmf;->a:Lhni;

    invoke-virtual {v0}, Lhni;->b()V

    .line 1039
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lhmf;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhmf;->a:Lhni;

    invoke-virtual {v0}, Lhni;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Llyi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .line 3036
    if-nez p2, :cond_1

    .line 3038
    const-string v0, "metric is null, skipping recorded metric for event: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3049
    :goto_0
    return-void

    .line 3038
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3041
    :cond_1
    iget-object v0, p0, Lhmf;->e:Lhlv;

    invoke-interface {v0, p2}, Lhlv;->a(Llyi;)Lmik;

    move-result-object v0

    .line 3043
    invoke-static {v0}, Lhml;->a(Lmik;)Lmik;

    move-result-object v0

    .line 3045
    if-eqz p1, :cond_2

    .line 3046
    iput-object p1, v0, Lmik;->c:Ljava/lang/String;

    .line 3048
    :cond_2
    iget-object v1, p0, Lhmf;->d:Lhnj;

    invoke-interface {v1, v0}, Lhnj;->a(Lmik;)V

    goto :goto_0
.end method
