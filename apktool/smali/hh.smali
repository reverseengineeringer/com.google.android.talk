.class public final Lhh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhg;

.field public static final b:Lhg;

.field public static final c:Lhg;

.field public static final d:Lhg;

.field public static final e:Lhg;

.field public static final f:Lhg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lhl;

    .line 1151
    invoke-direct {v0, v1, v2}, Lhl;-><init>(Lhk;Z)V

    .line 33
    sput-object v0, Lhh;->a:Lhg;

    .line 39
    new-instance v0, Lhl;

    .line 2151
    invoke-direct {v0, v1, v3}, Lhl;-><init>(Lhk;Z)V

    .line 39
    sput-object v0, Lhh;->b:Lhg;

    .line 47
    new-instance v0, Lhl;

    sget-object v1, Lhj;->a:Lhj;

    .line 3151
    invoke-direct {v0, v1, v2}, Lhl;-><init>(Lhk;Z)V

    .line 47
    sput-object v0, Lhh;->c:Lhg;

    .line 55
    new-instance v0, Lhl;

    sget-object v1, Lhj;->a:Lhj;

    .line 4151
    invoke-direct {v0, v1, v3}, Lhl;-><init>(Lhk;Z)V

    .line 55
    sput-object v0, Lhh;->d:Lhg;

    .line 62
    new-instance v0, Lhl;

    sget-object v1, Lhi;->a:Lhi;

    .line 5151
    invoke-direct {v0, v1, v2}, Lhl;-><init>(Lhk;Z)V

    .line 62
    sput-object v0, Lhh;->e:Lhg;

    .line 68
    sget-object v0, Lhm;->b:Lhm;

    sput-object v0, Lhh;->f:Lhg;

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 86
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 1

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
