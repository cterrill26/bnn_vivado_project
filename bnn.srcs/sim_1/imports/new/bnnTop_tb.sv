`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2021 01:40:42 PM
// Design Name: 
// Module Name: bnnTop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bnnTop_tb(

    );
    
    logic [31:0]M00_AXI_araddr;
    logic [1:0]M00_AXI_arburst;
    logic [3:0]M00_AXI_arcache;
    logic [7:0]M00_AXI_arlen;
    logic [0:0]M00_AXI_arlock;
    logic [2:0]M00_AXI_arprot;
    logic [3:0]M00_AXI_arqos;
    logic [0:0]M00_AXI_arready;
    logic [3:0]M00_AXI_arregion;
    logic [2:0]M00_AXI_arsize;
    logic [0:0]M00_AXI_arvalid;
//    logic [31:0]M00_AXI_awaddr;
//    logic [1:0]M00_AXI_awburst;
//    logic [3:0]M00_AXI_awcache;
//    logic [7:0]M00_AXI_awlen;
//    logic [0:0]M00_AXI_awlock;
//    logic [2:0]M00_AXI_awprot;
//    logic [3:0]M00_AXI_awqos;
//    logic [0:0]M00_AXI_awready;
//    logic [3:0]M00_AXI_awregion;
//    logic [2:0]M00_AXI_awsize;
//    logic [0:0]M00_AXI_awvalid;
//    logic [0:0]M00_AXI_bready;
//    logic [1:0]M00_AXI_bresp;
//    logic [0:0]M00_AXI_bvalid;
    logic [127:0]M00_AXI_rdata;
    logic [0:0]M00_AXI_rlast;
    logic [0:0]M00_AXI_rready;
    logic [1:0]M00_AXI_rresp;
    logic [0:0]M00_AXI_rvalid;
//    logic [31:0]M00_AXI_wdata;
//    logic [0:0]M00_AXI_wlast;
//    logic [0:0]M00_AXI_wready;
//    logic [3:0]M00_AXI_wstrb;
//    logic [0:0]M00_AXI_wvalid;
    logic [31:0]S_AXI_LITE_araddr;
    logic [2:0]S_AXI_LITE_arprot;
    logic [0:0]S_AXI_LITE_arready;
    logic [0:0]S_AXI_LITE_arvalid;
    logic [31:0]S_AXI_LITE_awaddr;
    logic [2:0]S_AXI_LITE_awprot;
    logic [0:0]S_AXI_LITE_awready;
    logic [0:0]S_AXI_LITE_awvalid;
    logic [0:0]S_AXI_LITE_bready;
    logic [1:0]S_AXI_LITE_bresp;
    logic [0:0]S_AXI_LITE_bvalid;
    logic [31:0]S_AXI_LITE_rdata;
    logic [0:0]S_AXI_LITE_rready;
    logic [1:0]S_AXI_LITE_rresp;
    logic [0:0]S_AXI_LITE_rvalid;
    logic [31:0]S_AXI_LITE_wdata;
    logic [0:0]S_AXI_LITE_wready;
    logic [3:0]S_AXI_LITE_wstrb;
    logic [0:0]S_AXI_LITE_wvalid;
    logic cdma_introut_0;
    logic cdma_introut_1;
    logic clk;
    logic done;
    logic mm2s_introut;
    logic resetn;
    
    bnnTop_min DUT(
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
//        .M00_AXI_awaddr(M00_AXI_awaddr),
//        .M00_AXI_awburst(M00_AXI_awburst),
//        .M00_AXI_awcache(M00_AXI_awcache),
//        .M00_AXI_awlen(M00_AXI_awlen),
//        .M00_AXI_awlock(M00_AXI_awlock),
//        .M00_AXI_awprot(M00_AXI_awprot),
//        .M00_AXI_awqos(M00_AXI_awqos),
//        .M00_AXI_awready(M00_AXI_awready),
//        .M00_AXI_awregion(M00_AXI_awregion),
//        .M00_AXI_awsize(M00_AXI_awsize),
//        .M00_AXI_awvalid(M00_AXI_awvalid),
//        .M00_AXI_bready(M00_AXI_bready),
//        .M00_AXI_bresp(M00_AXI_bresp),
//        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
//        .M00_AXI_wdata(M00_AXI_wdata),
//        .M00_AXI_wlast(M00_AXI_wlast),
//        .M00_AXI_wready(M00_AXI_wready),
//        .M00_AXI_wstrb(M00_AXI_wstrb),
//        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S_AXI_LITE_araddr(S_AXI_LITE_araddr),
        .S_AXI_LITE_arprot(S_AXI_LITE_arprot),
        .S_AXI_LITE_arready(S_AXI_LITE_arready),
        .S_AXI_LITE_arvalid(S_AXI_LITE_arvalid),
        .S_AXI_LITE_awaddr(S_AXI_LITE_awaddr),
        .S_AXI_LITE_awprot(S_AXI_LITE_awprot),
        .S_AXI_LITE_awready(S_AXI_LITE_awready),
        .S_AXI_LITE_awvalid(S_AXI_LITE_awvalid),
        .S_AXI_LITE_bready(S_AXI_LITE_bready),
        .S_AXI_LITE_bresp(S_AXI_LITE_bresp),
        .S_AXI_LITE_bvalid(S_AXI_LITE_bvalid),
        .S_AXI_LITE_rdata(S_AXI_LITE_rdata),
        .S_AXI_LITE_rready(S_AXI_LITE_rready),
        .S_AXI_LITE_rresp(S_AXI_LITE_rresp),
        .S_AXI_LITE_rvalid(S_AXI_LITE_rvalid),
        .S_AXI_LITE_wdata(S_AXI_LITE_wdata),
        .S_AXI_LITE_wready(S_AXI_LITE_wready),
        .S_AXI_LITE_wstrb(S_AXI_LITE_wstrb),
        .S_AXI_LITE_wvalid(S_AXI_LITE_wvalid),
        .cdma_introut_0(cdma_introut_0),
        .cdma_introut_1(cdma_introut_1),
        .clk(clk),
        .done(done),
        .mm2s_introut(mm2s_introut),
        .resetn(resetn));
        
    
    parameter EXTERNALDMA_BASE = 'hC0000000;
    parameter PARTIALSUMSDMA_BASE = 'hC0010000;
    parameter WEIGHTSDMA_BASE = 'hC0020000;
    parameter REGISTERS_BASE = 'hC0030000;
    parameter EXTERNALMEM_BASE = 'h80000000;
    parameter ACTIVATIONSMEM_BASE = 'h40000000;
    parameter WEIGHTSMEM_BASE = 'h40040000;
    parameter PARTIALSUMSMEM_BASE = 'h40020000;
    
    task axi_lite_write;
        input [31:0] address;
        input [31:0] data;
        begin
            S_AXI_LITE_awaddr = address;
            S_AXI_LITE_awvalid = 1;
            S_AXI_LITE_awprot = 0;
            while (!S_AXI_LITE_awready)
                #10;

            #10;
            S_AXI_LITE_awaddr = 0;
            S_AXI_LITE_awvalid = 0;
            S_AXI_LITE_awprot = 0;
            
            S_AXI_LITE_wdata = data;
            S_AXI_LITE_wvalid = 1;
            S_AXI_LITE_wstrb = 4'b1111;
            while (!S_AXI_LITE_wready)
                #10;
                
            #10;
            S_AXI_LITE_wdata = 0;
            S_AXI_LITE_wvalid = 0;
            S_AXI_LITE_wstrb = 0;
            
            S_AXI_LITE_bready = 1;
            while (!S_AXI_LITE_bvalid)
                #10;

            if(S_AXI_LITE_bresp != 0)
                $display("AXI-LITE Write Error");

            #10; 
            S_AXI_LITE_bready = 0;
            #10;   
        end
    endtask
    
    task axi_lite_read;
        input [31:0] address;
        output [31:0] data;
        begin
            S_AXI_LITE_araddr = address;
            S_AXI_LITE_arvalid = 1;
            S_AXI_LITE_arprot = 0;
            while (!S_AXI_LITE_arready)
                #10;

            #10;           
            S_AXI_LITE_araddr = 0;
            S_AXI_LITE_arvalid = 0;
            S_AXI_LITE_arprot = 0;
            
            S_AXI_LITE_rready = 1;
            while(!S_AXI_LITE_rvalid)
                #10;
                
            data = S_AXI_LITE_rdata;              
            #10;
            
            S_AXI_LITE_rready = 0;           

            $display("Read -- Address: 0x%h  Value: %b", address, data);

            #10;   
        end
    endtask
    
    task automatic manage_externalrd;
        begin
            int readlen = 0;
            
            while(1) begin
                
                M00_AXI_arready = 1;
                
                while(!M00_AXI_arvalid) 
                    #10;
                
                readlen = M00_AXI_arlen;
                #10;
                M00_AXI_arready = 0;
                
                for(int i = 0; i <= readlen; i += 1) begin
                    for (int f = 0; f < 8; f += 1)
                        M00_AXI_rdata[f*16+:16] = 16'b0011111110000000;
                        
                    if (i == readlen)
                        M00_AXI_rlast = 1;
                    else
                        M00_AXI_rlast = 0;
                        
                    M00_AXI_rresp = 0;
                    M00_AXI_rvalid = 1;
                    while(!M00_AXI_rready) #10;
                    #10;
                end
                M00_AXI_rdata = 0;
                M00_AXI_rlast = 0;
                M00_AXI_rvalid = 0;
                #10;
            end
        end
    endtask
    
    initial begin
        #100;
        manage_externalrd();
    end
    
    task automatic fc_layer;
        input [31:0] num_activations;
        input [31:0] num_neurons; 
        input [31:0] batch;
        input [31:0] activationsMem_addrrd;
        input [31:0] activationsMem_addrwr;
        input [31:0] externalWeights_addr;
        begin
            logic [31:0] a;
            int loads; 
            
            axi_lite_write(REGISTERS_BASE + 'h14, batch-1); //set batch size
            axi_lite_write(REGISTERS_BASE + 'h04, 32'd15); //set last row
            axi_lite_write(REGISTERS_BASE + 'h08, 32'd15); //set last col    
            
            //load initial weights from external mem into weights mem
            a = 0;
            a[12] = 1;
            axi_lite_write(EXTERNALDMA_BASE, a); //enable done interrupt
            axi_lite_write(EXTERNALDMA_BASE + 'h18, externalWeights_addr); //set source
            axi_lite_write(EXTERNALDMA_BASE + 'h20, WEIGHTSMEM_BASE); //set destination
            axi_lite_write(EXTERNALDMA_BASE + 'h28, 32'd2048); //set transfer size
            while(!cdma_introut_0) #10; 
            axi_lite_write(EXTERNALDMA_BASE + 'h04, a); //clear DMA interrupt
            loads = 1; 
        
            //transfer initial weights from weights mem to systolic array
            a = 0;
            a[12] = 1;
            a[0] = 1;
            axi_lite_write(WEIGHTSDMA_BASE, a); //enable done interrupt
            axi_lite_write(WEIGHTSDMA_BASE + 'h18, WEIGHTSMEM_BASE); //set source
            axi_lite_write(WEIGHTSDMA_BASE + 'h28, 32'd512); //set transfer size
            
            while(!mm2s_introut) #10; 
            a = 0;
            a[12] = 1;
            axi_lite_write(WEIGHTSDMA_BASE + 'h04, a); //clear DMA interrupt
            //axi_lite_write(REGISTERS_BASE, 32'h1); //transfer weights
            
            
            for(int weights_i = 0; weights_i < num_neurons; weights_i += 16) begin
                for(int weights_j = 0; weights_j < num_activations; weights_j += 16*4) begin
                    
                    if(weights_i != (num_neurons-16) || weights_j != (num_activations - 16*4)) begin
                        //load next weights from external mem into weights mem
                        a = 0;
                        a[12] = 1;
                        axi_lite_write(EXTERNALDMA_BASE + 'h18, externalWeights_addr + loads*2048); //set source
                        axi_lite_write(EXTERNALDMA_BASE + 'h20, WEIGHTSMEM_BASE + (loads%2)*2048); //set destination
                        axi_lite_write(EXTERNALDMA_BASE + 'h28, 32'd2048); //set transfer size                   
                    end
                    
                    for(int k = 0; k < 16*4; k += 16) begin
                        //ensure weights have been transfered to systolic array
//                        axi_lite_write(INTERRUPTS_BASE + 'h08, 32'h2); //enable WEIGHTSDMA done interrupt
//                        while(!interrupt_0_interrupt) #10; 
//                        a = 0;
//                        a[12] = 1;
//                        axi_lite_write(WEIGHTSDMA_BASE + 'h04, a); //clear DMA interrupt
//                        axi_lite_write(INTERRUPTS_BASE + 'h0c, 32'h2); //clear interrupt controller
//                        axi_lite_write(INTERRUPTS_BASE + 'h08, 32'h0); //disable EXTERNALDMA done interrupt
                        axi_lite_write(REGISTERS_BASE, 32'h1); //transfer weights
                        
                        //start transfer of next weights to systolic array
                        if(k == 16*3) begin
                            if(weights_i != (num_neurons-16) || weights_j != (num_activations - 16*4)) begin
                                a = 0;
                                a[12] = 1;
                                while(!mm2s_introut) #10; 
                                axi_lite_write(EXTERNALDMA_BASE + 'h04, a); //clear DMA interrupt
                                loads += 1;
                            
                                axi_lite_write(WEIGHTSDMA_BASE + 'h18, WEIGHTSMEM_BASE + ((loads-1)%2)*2048); //set source
                                axi_lite_write(WEIGHTSDMA_BASE + 'h28, 32'd512); //set transfer size
                            end
                        end
                        else begin 
                            axi_lite_write(WEIGHTSDMA_BASE + 'h18, WEIGHTSMEM_BASE + ((loads-1)%2)*2048 + (k/16+1)*512); //set source
                            axi_lite_write(WEIGHTSDMA_BASE + 'h28, 32'd512); //set transfer size
                        end
                        
                        axi_lite_write(REGISTERS_BASE + 'h10, activationsMem_addrrd + (weights_j+k)/16*batch); //set activations start address
                        axi_lite_write(REGISTERS_BASE + 'h18, PARTIALSUMSMEM_BASE + weights_i/16*batch); //set partialsums start address
                        if ((weights_j+k) == 0)
                            axi_lite_write(REGISTERS_BASE + 'h1c, 32'h2); //set accumulate to false, interrupt to true
                        else 
                            axi_lite_write(REGISTERS_BASE + 'h1c, 32'h3); //set accumulate to true, interrupt to true
                        axi_lite_write(REGISTERS_BASE + 'h0c, 32'h1); //start the multiply
                        
                        while(!done) #10;
                        
                    end
                end
            end
 
            //transfer results back to activations memory
            a = 0;
            a[12] = 1;           
            axi_lite_write(PARTIALSUMSDMA_BASE, a); //enable done interrupt
            axi_lite_write(PARTIALSUMSDMA_BASE + 'h18, PARTIALSUMSMEM_BASE); //set source
            axi_lite_write(PARTIALSUMSDMA_BASE + 'h20, activationsMem_addrwr); //set destination
            axi_lite_write(PARTIALSUMSDMA_BASE + 'h28, num_neurons*2*batch); //set transfer size
            while(!cdma_introut_1) #10; 
            axi_lite_write(PARTIALSUMSDMA_BASE + 'h04, a); //clear DMA interrupt
            
            //disable dma interrupts
            axi_lite_write(EXTERNALDMA_BASE, 0);
            axi_lite_write(WEIGHTSDMA_BASE, 0); //stop dma
            axi_lite_write(PARTIALSUMSDMA_BASE, 0); 
          
        end
    endtask
    
    
    always #5 clk = ~clk;
    
    //logic [31:0] a ,b;
        
    initial begin
        logic [31:0] a, b;
        logic [31:0] num_activations;
        logic [31:0] num_neurons; 
        logic [31:0] batch;
        logic [31:0] activationsMem_addrrd;
        logic [31:0] activationsMem_addrwr;
        logic [31:0] externalWeights_addr;
        
        M00_AXI_arready = 0;
//        M00_AXI_awready = 0;
//        M00_AXI_bresp = 0;
//        M00_AXI_bvalid = 0;
        M00_AXI_rdata = 0;
        M00_AXI_rlast = 0;
        M00_AXI_rresp = 0;
        M00_AXI_rvalid = 0; 
//        M00_AXI_wready = 0;
        S_AXI_LITE_araddr = 0;
        S_AXI_LITE_arprot = 0;
        S_AXI_LITE_arvalid = 0;
        S_AXI_LITE_awaddr = 0;
        S_AXI_LITE_awprot = 0;
        S_AXI_LITE_awvalid = 0;
        S_AXI_LITE_bready = 0;
        S_AXI_LITE_rready = 0;
        S_AXI_LITE_wdata = 0;
        S_AXI_LITE_wstrb = 0;
        S_AXI_LITE_wvalid = 0;
        clk = 0;
        resetn = 0;
        #100;
        resetn = 1;
        #100;
        
        num_activations = 'd128;
        num_neurons = 'd32;
        batch = 'd4;
        activationsMem_addrrd = ACTIVATIONSMEM_BASE;
        activationsMem_addrwr = ACTIVATIONSMEM_BASE;
        externalWeights_addr  = EXTERNALMEM_BASE;
        
        //load initial activations from external mem into weights mem
        a = 0;
        a[12] = 1;
        axi_lite_write(EXTERNALDMA_BASE, a); //enable done interrupt
        axi_lite_write(EXTERNALDMA_BASE + 'h18, EXTERNALMEM_BASE); //set source
        axi_lite_write(EXTERNALDMA_BASE + 'h20, ACTIVATIONSMEM_BASE); //set destination
        axi_lite_write(EXTERNALDMA_BASE + 'h28, num_activations*batch*2); //set transfer size
        while(!cdma_introut_0) #10;  
        axi_lite_read(EXTERNALDMA_BASE + 'h04, b);
        axi_lite_write(EXTERNALDMA_BASE + 'h04, a); //clear DMA interrupt
        

        fc_layer(num_activations, num_neurons, batch, activationsMem_addrrd, activationsMem_addrwr, externalWeights_addr);

        $finish;
    end
    
    
endmodule
