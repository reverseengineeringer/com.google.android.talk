.class final Lbup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfek;


# instance fields
.field final synthetic a:Lbuo;


# direct methods
.method constructor <init>(Lbuo;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbup;->a:Lbuo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbfd;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/apps/hangouts/views/MessageListItemView;Lfcv;)Lfcu;
    .locals 12

    .prologue
    .line 52
    new-instance v0, Lbtz;

    .line 54
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v2

    move-object v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lbtz;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/apps/hangouts/views/MessageListItemView;Lfcv;)V

    return-object v0
.end method
