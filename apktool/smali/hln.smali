.class final Lhln;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method a(IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iput p1, p0, Lhln;->a:I

    .line 32
    iput-wide p3, p0, Lhln;->c:J

    .line 33
    iput-object p5, p0, Lhln;->d:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lhln;->e:Ljava/lang/String;

    .line 35
    packed-switch p2, :pswitch_data_0

    .line 55
    const-string v0, "?"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const-string v0, "D"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_1
    const-string v0, "W"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "I"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "V"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "E"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "A"

    iput-object v0, p0, Lhln;->b:Ljava/lang/String;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
