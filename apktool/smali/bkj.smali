.class final Lbkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjr;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Liog;ILbg;)Lbjm;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lbjw;

    invoke-direct {v0, p1, p2, p3, p4}, Lbjw;-><init>(Landroid/content/Context;Liog;ILbg;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Liog;ILav;Laxq;Lbkw;)Lbjp;
    .locals 7

    .prologue
    .line 25
    new-instance v0, Lbkb;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbkb;-><init>(Landroid/content/Context;Liog;ILav;Laxq;Lbkw;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Liog;I)Lbjs;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lbkk;

    invoke-direct {v0, p1, p2, p3}, Lbkk;-><init>(Landroid/content/Context;Liog;I)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Liog;Lbg;)Lbju;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lbkm;

    invoke-direct {v0, p1, p2, p3}, Lbkm;-><init>(Landroid/content/Context;Liog;Lbg;)V

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;ILihb;Lbfw;Lbkw;IZLjava/lang/String;I)Lhtu;
    .locals 10

    .prologue
    .line 1053
    new-instance v0, Lbjz;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lbjz;-><init>(Ljava/lang/String;ILihb;Lbfw;Lbkw;IZLjava/lang/String;I)V

    .line 20
    return-object v0
.end method
