.class public final Leby;
.super Lebx;
.source "SourceFile"


# instance fields
.field private a:Ldvm;

.field private e:I

.field private f:Leer;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;JILdvm;ILeer;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct/range {p0 .. p17}, Lebx;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;JI)V

    .line 34
    move-object/from16 v0, p18

    iput-object v0, p0, Leby;->a:Ldvm;

    .line 35
    move/from16 v0, p19

    iput v0, p0, Leby;->e:I

    .line 36
    move-object/from16 v0, p20

    iput-object v0, p0, Leby;->f:Leer;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Leby;->g:Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(Ldvm;ILeer;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Leby;->g:Z

    return v0
.end method

.method protected b(Lbfz;JLjava/lang/String;ZILjava/lang/String;Lbgd;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p8}, Leby;->a(Lbfz;JLjava/lang/String;ZILjava/lang/String;Lbgd;)V

    .line 49
    iget-object v0, p0, Leby;->a:Ldvm;

    iget v1, p0, Leby;->e:I

    iget-object v2, p0, Leby;->f:Leer;

    invoke-super {p0, v0, v1, v2}, Lebx;->a(Ldvm;ILeer;)Z

    move-result v0

    iput-boolean v0, p0, Leby;->g:Z

    .line 50
    invoke-virtual/range {p0 .. p7}, Leby;->a(Lbfz;JLjava/lang/String;ZILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
