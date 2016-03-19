.class final Lels;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lelp;


# direct methods
.method constructor <init>(Lelp;I)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lels;->b:Lelp;

    iput p2, p0, Lels;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 387
    check-cast p1, Lejs;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lejs;->a(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lels;->b:Lelp;

    .line 1051
    iget-object v0, v0, Lelp;->b:Lhpz;

    .line 388
    iget v1, p0, Lels;->a:I

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "sms_notification_sound_key"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lhqc;->d()I

    .line 390
    const/4 v0, 0x1

    return v0
.end method
