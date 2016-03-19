.class public final Lddj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    iput-object p3, p0, Lddj;->a:Landroid/os/Handler;

    .line 310
    iput-object p1, p0, Lddj;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 311
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lddj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lbei;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    iget-object v0, p0, Lddj;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
