.class public final Lihu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lihh;


# instance fields
.field private final a:Lifh;


# direct methods
.method public constructor <init>(Lifh;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lihu;->a:Lifh;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lihp;ILjava/lang/String;)V
    .locals 21

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lihu;->a:Lifh;

    new-instance v3, Lifj;

    .line 47
    invoke-virtual/range {p2 .. p2}, Lihp;->b()[Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual/range {p2 .. p2}, Lihp;->f()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lihp;->h()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lihp;->g()J

    move-result-wide v10

    .line 49
    invoke-virtual/range {p2 .. p2}, Lihp;->i()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lihp;->e()J

    move-result-wide v14

    .line 50
    invoke-virtual/range {p2 .. p2}, Lihp;->j()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lihp;->k()Lhq;

    move-result-object v20

    move-object/from16 v5, p1

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v3 .. v20}, Lifj;-><init>([Ljava/lang/String;Ljava/lang/String;JJJJJILjava/lang/String;JLjava/util/Map;)V

    .line 46
    invoke-interface {v2}, Lifh;->a()V

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
